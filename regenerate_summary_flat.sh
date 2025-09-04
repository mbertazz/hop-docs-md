#!/usr/bin/env bash
set -euo pipefail
OUT="SUMMARY.md"

# intestazione + home
cat > "$OUT" <<'MD'
# Summary
* [Home](README.md)
* [Hop User Manual](modules/ROOT/pages/index.md)
MD

# aggiungi tutte le pagine di primo livello sotto modules/ROOT/pages (escludi index.md)
find modules/ROOT/pages -maxdepth 1 -type f -name "*.md" ! -name "index.md" \
  | LC_ALL=C sort \
  | while read -r f; do
      title="$(grep -m1 -E '^# ' "$f" | sed 's/^# //;s/\r$//')"
      [[ -z "$title" ]] && title="$(basename "$f" .md | tr '-' ' ')"
      printf "  * [%s](%s)\n" "$title" "$f" >> "$OUT"
    done

# ora gestisci le sottocartelle (2° livello) in modo semplice
find modules/ROOT/pages -mindepth 1 -type d | LC_ALL=C sort | while read -r d; do
  index="$d/index.md"
  if [[ -f "$index" ]]; then
    title="$(grep -m1 -E '^# ' "$index" | sed 's/^# //;s/\r$//')"
    [[ -z "$title" ]] && title="$(basename "$d")"
    printf "  * [%s](%s)\n" "$title" "$index" >> "$OUT"
  else
    # se non c'è un index, crea solo una voce non linkata
    printf "  * %s\n" "$(basename "$d")" >> "$OUT"
  fi
  # figlie della cartella (escludi index.md)
  find "$d" -maxdepth 1 -type f -name "*.md" ! -name "index.md" \
    | LC_ALL=C sort \
    | while read -r f; do
        t="$(grep -m1 -E '^# ' "$f" | sed 's/^# //;s/\r$//')"
        [[ -z "$t" ]] && t="$(basename "$f" .md | tr '-' ' ')"
        printf "    * [%s](%s)\n" "$t" "$f" >> "$OUT"
      done
done

echo "Wrote $OUT"
