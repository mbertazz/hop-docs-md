#!/usr/bin/env bash
set -euo pipefail

SRC="${SRC:-$HOME/hop/docs/hop-user-manual}"
ROOT="$(pwd)"

fix_count=0; copy_count=0; miss_count=0

escape_sed() { sed -e 's/[\/&]/\\&/g' <<<"$1"; }

while IFS= read -r md; do
  mddir="$(dirname "$md")"
  module="$(sed -E 's#^modules/([^/]+)/.*#\1#' <<<"$md")"

  # Estrai tutti i link immagine locali
  perl -ne 'while(/\!\[[^\]]*\]\(([^)]+)\)/g){ print "$ARGV\t$1\n"; }' "$md" \
  | while IFS=$'\t' read -r file rel; do
      [[ "$rel" =~ ^https?:// ]] && continue
      rel_clean="${rel#./}"
      abs="$(realpath -m "$mddir/$rel_clean")"
      [[ -f "$abs" ]] && continue

      # Se il link è del tipo ../assets/images/<subpath>
      subpath=""
      if [[ "$rel_clean" =~ ^\.\./assets/images/(.*) ]]; then
        subpath="${BASH_REMATCH[1]}"
      fi

      base="$(basename "$rel_clean")"
      target_dir="modules/${module}/assets/images"
      [[ -n "$subpath" ]] && target_dir="${target_dir}/$(dirname "$subpath")"
      [[ "$target_dir" =~ /.$ ]] && target_dir="${target_dir%/.}"

      # 1) candidato con stesso subpath nel modulo corrente
      chosen_src=""
      if [[ -n "$subpath" ]]; then
        cand="${SRC}/modules/${module}/assets/images/${subpath}"
        [[ -f "$cand" ]] && chosen_src="$cand"
      fi

      # 2) altrimenti cerca per basename in tutta la sorgente assets
      if [[ -z "$chosen_src" ]]; then
        chosen_src="$(find "$SRC/modules" -type f -path "*/assets/images/*" -iname "$base" | head -n 1 || true)"
      fi

      if [[ -z "$chosen_src" ]]; then
        echo "KO  : $md -> $rel   (nessun file trovato in sorgente per $base)"
        ((miss_count++))
        continue
      fi

      # assicura dir e copia
      mkdir -p "$target_dir"
      cp -f "$chosen_src" "$target_dir/"
      copied_path="$target_dir/$(basename "$chosen_src")"
      ((copy_count++))

      # calcola nuovo path relativo dal md al file copiato
      if command -v realpath >/dev/null 2>&1; then
        new_rel="$(realpath --relative-to="$mddir" "$copied_path" | sed 's#\\#/#g')"
      else
        # fallback POSIX: usa path assoluti (non ideale ma funziona in GitBook)
        new_rel="$copied_path"
      fi

      # aggiorna SOLO quell'occorrenza nel file
      rel_esc="$(escape_sed "$rel")"
      new_rel_esc="$(escape_sed "$new_rel")"
      perl -0777 -pe "s#(\\!\\[[^\\]]*\\]\\()${rel_esc}(\\))#\$1${new_rel_esc}\$2#;" -i "$md"
      echo "FIX : $md : '$rel' → '$new_rel'"
      ((fix_count++))
    done
done < <(find modules -type f -path "*/pages/*.md")

echo "----"
echo "Copiati  : $copy_count"
echo "Link fix : $fix_count"
echo "Ancora KO: $miss_count"
