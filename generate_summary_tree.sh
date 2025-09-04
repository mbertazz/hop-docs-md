#!/usr/bin/env bash
set -euo pipefail
OUT="SUMMARY.md"
echo "# Summary" > "$OUT"
[[ -f README.md ]] && echo "* [Home](README.md)" >> "$OUT" && echo >> "$OUT"

for MOD in modules/*; do
  [[ -d "$MOD/pages" ]] || continue
  M="$(basename "$MOD")"
  echo "* ${M}" >> "$OUT"

  # Visita ricorsiva delle cartelle sotto pages/
  find "$MOD/pages" -type d | LC_ALL=C sort | while read -r DIR; do
    reldir="${DIR#${MOD}/pages/}"        # "" oppure "sub/dir"
    depth=1
    [[ -n "$reldir" ]] && depth=$((depth + $(grep -o "/" <<<"$reldir" | wc -l) + 1))
    indent="$(printf '  %.0s' $(seq 1 $depth))"

    if [[ -f "$DIR/index.md" ]]; then
      title="$(grep -m1 -E '^# ' "$DIR/index.md" | sed 's/^# //;s/\r$//')"
      [[ -z "$title" ]] && title="$(basename "$DIR")"
      echo "${indent}* [${title}](${DIR}/index.md)" >> "$OUT"
      child_indent="$(printf '  %.0s' $(seq 1 $((depth+1))))"
    else
      [[ -n "$reldir" ]] && echo "${indent}* $(basename "$DIR")" >> "$OUT"
      child_indent="$(printf '  %.0s' $(seq 1 $((depth + ([[ -n "$reldir" ]] && echo 1 || echo 0)))) )"
    fi

    # Pagine della cartella (escluso index.md)
    find "$DIR" -maxdepth 1 -type f -name "*.md" ! -name "index.md" \
      | LC_ALL=C sort | while read -r F; do
        title="$(grep -m1 -E '^# ' "$F" | sed 's/^# //;s/\r$//')"
        [[ -z "$title" ]] && title="$(basename "$F" .md | tr '-' ' ')"
        echo "${child_indent}* [${title}](${F})" >> "$OUT"
      done
  done
  echo >> "$OUT"
done

echo "Wrote $OUT"
