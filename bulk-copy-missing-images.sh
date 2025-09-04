#!/usr/bin/env bash
set -euo pipefail
SRC="${SRC:-$HOME/hop/docs/hop-user-manual}"

copy=0; miss=0

# 1) Genera al volo la lista dei "MANCANTE" scansionando i .md
tmp_missing="$(mktemp)"
while IFS= read -r md; do
  base="$(dirname "$md")"
  perl -ne 'while(/\!\[[^\]]*\]\(([^)]+)\)/g){ print "$ARGV\t$1\n"; }' "$md" \
  | while IFS=$'\t' read -r f rel; do
      [[ "$rel" =~ ^https?:// ]] && continue
      rel="${rel#./}"
      dest="$(realpath -m "$base/$rel")"
      [[ -f "$dest" ]] || echo -e "$md\t$rel\t$dest"
    done
done < <(find modules -type f -path "*/pages/*.md") > "$tmp_missing"

# 2) Per ogni mancante: cerca per basename nella sorgente e copia
while IFS=$'\t' read -r md rel dest; do
  file="$(basename "$rel")"
  # cerca ovunque in SRC/modules/*/assets/** per nome (case-insensitive)
  cand="$(find "$SRC/modules" -type f -path '*/assets/*' -iname "$file" | head -n 1 || true)"
  if [[ -z "$cand" ]]; then
    echo "KO  : $md -> $rel   (non trovato in sorgente: $file)"
    ((miss++))
    continue
  fi
  mkdir -p "$(dirname "$dest")"
  cp -f "$cand" "$dest"
  echo "OK  : copiato $(basename "$cand") in ${dest#$(pwd)/}"
  ((copy++))
done < "$tmp_missing"

echo "----"
echo "Copiati : $copy"
echo "Ancora KO: $miss"
rm -f "$tmp_missing"
