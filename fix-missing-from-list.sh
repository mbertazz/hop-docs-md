#!/usr/bin/env bash
set -euo pipefail
SRC="${SRC:-$HOME/hop/docs/hop-user-manual}"

fix=0; miss=0; copy=0

while IFS= read -r line; do
  [[ -z "$line" ]] && continue
  md="$(sed -E 's/^MANCANTE:\s*([^ ]+)\s*->.*/\1/' <<<"$line")"
  rel="$(sed -E 's/^MANCANTE:\s*[^ ]+\s*->\s*(.*)$/\1/' <<<"$line")"

  # risolvi il path di destinazione dove il link si aspetta l'immagine
  base="$(dirname "$md")"
  rel_clean="${rel#./}"
  dest="$(realpath -m "$base/$rel_clean")"
  dest_dir="$(dirname "$dest")"
  file_base="$(basename "$rel_clean")"

  # cerca la sorgente per basename: prima nel modulo ROOT, poi ovunque
  cand=""
  # prova path "coerente" in SRC se il link ha subpath sotto assets/images/
  if [[ "$rel_clean" =~ \.\./assets/images/(.*) ]]; then
    sub="${BASH_REMATCH[1]}"
    cand_try="${SRC}/modules/ROOT/assets/images/${sub}"
    [[ -f "$cand_try" ]] && cand="$cand_try"
  fi
  # altrimenti cerca per basename in tutti gli assets/images
  [[ -z "$cand" ]] && cand="$(find "$SRC/modules" -type f -path '*/assets/images/*' -iname "$file_base" | head -n 1 || true)"

  if [[ -z "$cand" ]]; then
    echo "KO  : $md -> $rel   (non trovato in sorgente: $file_base)"
    ((miss++))
    continue
  fi

  mkdir -p "$dest_dir"
  cp -f "$cand" "$dest"
  echo "OK  : copiato $(basename "$cand") in ${dest#$(pwd)/}"
  ((copy++))
  ((fix++))
done < missing-images.txt

echo "----"
echo "Copiati : $copy"
echo "Fixed   : $fix"
echo "Ancora KO: $miss"
