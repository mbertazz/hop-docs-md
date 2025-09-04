#!/usr/bin/env bash
set -euo pipefail
SRC="${SRC:-$HOME/hop/docs/hop-user-manual}"
ROOT="$(pwd)"

copy=0; miss=0

# Riscansiona tutti i .md per ricavare i mancanti
while IFS= read -r md; do
  base="$(dirname "$md")"
  perl -ne 'while(/\!\[[^\]]*\]\(([^)]+)\)/g){ print "$ARGV\t$1\n"; }' "$md" \
  | while IFS=$'\t' read -r f rel; do
      [[ "$rel" =~ ^https?:// ]] && continue
      rel="${rel#./}"
      dest="$(realpath -m "$base/$rel")"
      [[ -f "$dest" ]] && continue

      # Nome file cercato (rispetta PNG)
      file="$(basename "$rel")"

      # 1) se il link è ../assets/images/..., prova lo stesso subpath in SRC (ROOT)
      found=""
      if [[ "$rel" =~ ^\.\./assets/ ]]; then
        sub="${rel#../}"  # assets/...
        try1="${SRC}/modules/ROOT/${sub}"
        [[ -f "$try1" ]] && found="$try1"
      fi

      # 2) cerca OVUNQUE sotto SRC (qualsiasi cartella) per nome esatto (case-insensitive)
      if [[ -z "$found" ]]; then
        found="$(find "$SRC" -type f -iname "$file" | head -n 1 || true)"
      fi

      if [[ -z "$found" ]]; then
        echo "KO  : $md -> $rel   (non trovato in SRC: $file)"
        ((miss++))
        continue
      fi

      mkdir -p "$(dirname "$dest")"
      cp -f "$found" "$dest"
      echo "COPY: ${dest#${ROOT}/}   <- ${found#${SRC}/}"
      ((copy++))
    done
done < <(find modules -type f -path "*/pages/*.md")

echo "----"
echo "Copiati : $copy"
echo "AncoraKO: $miss"
