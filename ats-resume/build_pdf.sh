#!/usr/bin/env bash
# Build an ATS-safe, nicely-styled PDF from a Markdown resume.
# Pipeline: pandoc (md -> standalone HTML with embedded CSS) -> headless Chrome (HTML -> PDF).
# Text stays selectable, single column -> ATS parses it; CSS is visual only.
set -euo pipefail

cd "$(dirname "$0")"

SRC="${1:-resume-ats.md}"
BASE="${SRC%.md}"
HTML="$BASE.html"
PDF="$BASE.pdf"
CSS="resume.css"

command -v pandoc >/dev/null || { echo "pandoc not found. brew install pandoc"; exit 1; }

# 1) Markdown -> self-contained HTML (CSS inlined so the PDF engine needs no extra files)
pandoc "$SRC" \
  --from gfm+hard_line_breaks \
  --to html5 \
  --standalone \
  --embed-resources \
  --css "$CSS" \
  --metadata pagetitle="$(head -1 "$SRC" | sed 's/^# //') — Resume" \
  -o "$HTML"

# 2) HTML -> PDF via headless Chrome (selectable text, honors @page CSS)
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$CHROME" ] || CHROME="/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"

if [ -x "$CHROME" ]; then
  "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$PDF" "file://$PWD/$HTML" 2>/dev/null
  echo "wrote $PDF"
else
  echo "No Chrome/Edge found. Open $HTML in a browser and print to PDF (Cmd+P -> Save as PDF)."
fi

echo "wrote $HTML"
