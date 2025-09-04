import os, re, sys
from pathlib import Path

ROOT = Path.cwd()
OUT = ROOT / "SUMMARY.md"

def md_title(p: Path) -> str:
    try:
        for line in p.read_text(encoding="utf-8", errors="ignore").splitlines():
            if line.startswith("# "):
                return line[2:].strip()
    except Exception:
        pass
    return p.stem.replace("-", " ")

def rel(p: Path) -> str:
    return p.as_posix()

lines = []
lines.append("# Summary")
if (ROOT / "README.md").exists():
    lines.append("* [Home](README.md)")

modules_dir = ROOT / "modules"
if not modules_dir.exists():
    print("Nessuna cartella 'modules' trovata.", file=sys.stderr)

def walk_dir(base_pages: Path, d: Path, depth: int):
    """Scrive i file di d (escluso index.md), poi scende nelle sottocartelle."""
    # file (escluso index.md)
    files = sorted([p for p in d.iterdir() if p.is_file() and p.suffix == ".md" and p.name != "index.md"])
    for f in files:
        title = md_title(f)
        lines.append(f'{"  " * depth}* [{title}]({rel(f.relative_to(ROOT))})')
    # sottocartelle
    subdirs = sorted([p for p in d.iterdir() if p.is_dir()])
    for sd in subdirs:
        idx = sd / "index.md"
        if idx.exists():
            title = md_title(idx)
            lines.append(f'{"  " * depth}* [{title}]({rel(idx.relative_to(ROOT))})')
            walk_dir(base_pages, sd, depth + 1)
        else:
            # voce non linkata per la cartella (se vuoi, puoi creare stub index.md)
            lines.append(f'{"  " * depth}* {sd.name}')
            walk_dir(base_pages, sd, depth + 1)

# Per ogni modulo con pages/
for mod in sorted([p for p in modules_dir.iterdir() if p.is_dir()]):
    pages = mod / "pages"
    if not pages.exists():
        continue
    # livello modulo: se esiste pages/index.md lo usiamo come voce cliccabile
    mod_index = pages / "index.md"
    if mod_index.exists():
        title = md_title(mod_index)
        lines.append(f'* [{title}]({rel(mod_index.relative_to(ROOT))})')
        # figli di modulo: tutti i file in pages/ (escluso index) e tutto l’albero sotto
        walk_dir(pages, pages, depth=1)
    else:
        # modulo senza index: intestazione non linkata
        lines.append(f'* {mod.name}')
        walk_dir(pages, pages, depth=1)

OUT.write_text("\n".join(lines) + "\n", encoding="utf-8")
print(f"Wrote {OUT}")
