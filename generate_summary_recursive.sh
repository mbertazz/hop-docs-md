#!/usr/bin/env bash
set -euo pipefail

OUT="SUMMARY.md"

indent() { # $1 = depth
  local d="$1"; local s=""
  while [ "$d" -gt 0 ]; do s="${s}  "; d=$((d-1)); done
  printf "%s" "$s"
}

title_of() { # $1 = file.md
  local f="$1"
  local t
  t="$(grep -m1 -E '^# ' "$f" | sed 's/^# //;s/\r$//' || true)"
  if [ -z "$t" ]; then
    t="$(basename "$f" .md | tr '-' ' ')"
  fi
  printf "%s" "$t"
}

walk_dir() { # $1=dir path, $2=depth
  local dir="$1"; local depth="$2"

  # 1) file della cartella (escludi index.md), ordinati
  LC_ALL=C find "$dir" -maxdepth 1 -type f -name "*.md" ! -name "index.md" | sort | \
  while IFS= read -r f; do
    local t; t="$(title_of "$f")"
    printf "%s* [%s](%s)\n" "$(indent "$depth")" "$t" "$f" >> "$OUT"
  done

  # 2) sottocartelle, ordinate
  LC_ALL=C find "$dir" -mindepth 1 -maxdepth 1 -type d | sort | \
  while IFS= read -r sub; do
    local idx="$sub/index.md"
    if [ -f "$idx" ]; then
      local t; t="$(title_of "$idx")"
      printf "%s* [%s](%s)\n" "$(indent "$depth")" "$t" "$idx" >> "$OUT"
    else
      printf "%s* %s\n" "$(indent "$depth")" "$(basename "$sub")" >> "$OUT"
    fi
    walk_dir "$sub" $((depth+1))
  done
}

# ==== genera ====
echo "# Summary" > "$OUT"
[ -f README.md ] && echo "* [Home](README.md)" >> "$OUT"

# per ogni modulo con pages/
LC_ALL=C find modules -mindepth 1 -maxdepth 1 -type d | sort | \
while IFS= read -r MOD; do
  [ -d "$MOD/pages" ] || continue
  local_idx="$MOD/pages/index.md"
  if [ -f "$local_idx" ]; then
    t="$(title_of "$local_idx")"
    echo "* [${t}](${local_idx})" >> "$OUT"
  else
    echo "* $(basename "$MOD")" >> "$OUT"
  fi
  walk_dir "$MOD/pages" 1
  echo >> "$OUT"
done

echo "Wrote $OUT"
