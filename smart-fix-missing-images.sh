#!/usr/bin/env bash
set -euo pipefail
SRC="${SRC:-$HOME/hop/docs/hop-user-manual}"
ROOT="$(pwd)"

alt_ext() {
  # da foo.png genera foo.svg foo.jpg foo.jpeg foo.webp (in quest'ordine)
  local p="$1" b="${1%.*}"
  echo "${b}.svg" "${b}.jpg" "${b}.jpeg" "${b}.webp"
}

escape_sed() { sed -e 's/[\/&]/\\&/g' <<<"$1"; }

copy=0; fix=0; miss=0

# Scansiona tutti i .md nelle pagine
while IFS= read -r md; do
  base="$(dirname "$md")"
  # Estrai tutti i link immagine non-HTTP
  perl -ne 'while(/\!\[[^\]]*\]\(([^)]+)\)/g){ print "$ARGV\t$1\n"; }' "$md" \
  | while IFS=$'\t' read -r f rel; do
      [[ "$rel" =~ ^https?:// ]] && continue
      r="${rel#./}"
      dest="$(realpath -m "$base/$r")"
      [[ -f "$dest" ]] && continue

      # 1) Se il link è del tipo ../assets/images/..., prova stesso path in SRC
      tried_paths=()
      found=""
      if [[ "$r" =~ ^\.\./assets/ ]]; then
        # Path sorgente "coerente": rimuovi ../ e premetti SRC/modules/ROOT/
        src_try="${SRC}/modules/ROOT/${r#../}"
        tried_paths+=("$src_try")
        [[ -f "$src_try" ]] && found="$src_try"
        # Estensioni alternative
        if [[ -z "$found" ]]; then
          for ae in $(alt_ext "$src_try"); do
            tried_paths+=("$ae")
            [[ -f "$ae" ]] && { found="$ae"; break; }
          done
        fi
      fi

      # 2) Se non trovato, cerca per basename ovunque negli assets della sorgente
      if [[ -z "$found" ]]; then
        file="$(basename "$r")"
        # prima estensione identica
        cand="$(find "$SRC/modules" -type f -path "*/assets/*" -iname "$file" | head -n 1 || true)"
        if [[ -z "$cand" ]]; then
          # poi estensioni alternative del basename
          base_noext="${file%.*}"
          for ext in png svg jpg jpeg webp; do
            cand="$(find "$SRC/modules" -type f -path "*/assets/*" -iname "${base_noext}.${ext}" | head -n 1 || true)"
            [[ -n "$cand" ]] && break
          done
        fi
        [[ -n "$cand" ]] && found="$cand"
      fi

      if [[ -z "$found" ]]; then
        echo "KO  : $md -> $rel   (non trovato in SRC; provati: ${tried_paths[*]:-<none>})"
        ((miss++))
        continue
      fi

      # 3) Copia nel path atteso dal link (creando le cartelle)
      mkdir -p "$(dirname "$dest")"
      cp -f "$found" "$dest"
      echo "COPY: ${dest#${ROOT}/}   <- $(basename "$found")"
      ((copy++))

      # 4) Se l'estensione/copied name differisce dal link originale, aggiorna il link nel .md
      new_rel="$(realpath -m --relative-to="$base" "$dest" | sed 's#\\#/#g')"
      if [[ "$new_rel" != "$r" ]]; then
        old_esc="$(escape_sed "$rel")"; new_esc="$(escape_sed "$new_rel")"
        perl -0777 -pe "s#(\\!\\[[^\\]]*\\]\\()${old_esc}(\\))#\$1${new_esc}\$2#;" -i "$md"
        echo "FIX : $md : '$rel' → '$new_rel'"
        ((fix++))
      fi
    done
done < <(find modules -type f -path "*/pages/*.md")

echo "----"
echo "Copiati : $copy"
echo "LinkFix : $fix"
echo "AncoraKO: $miss"
