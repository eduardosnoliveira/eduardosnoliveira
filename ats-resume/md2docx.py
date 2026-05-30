#!/usr/bin/env python3
"""Convert a Markdown resume to ATS-safe .docx via pandoc.

Usage:
    python3 md2docx.py [resume.md]

Defaults to resume-ats.md in the script directory. Requires pandoc.
"""
import shutil
import subprocess
import sys
from pathlib import Path


def main() -> int:
    if not shutil.which("pandoc"):
        sys.exit("pandoc not found. Install: brew install pandoc")

    here = Path(__file__).parent
    src = Path(sys.argv[1]) if len(sys.argv) > 1 else here / "resume-ats.md"
    if not src.exists():
        sys.exit(f"not found: {src}")

    out = src.with_suffix(".docx")
    cmd = [
        "pandoc",
        str(src),
        "-o", str(out),
        "--from", "gfm",        # GitHub-flavored markdown
        "--standalone",
    ]
    # optional house style: pandoc -o reference.docx --print-default-data-file reference.docx
    ref = src.parent / "reference.docx"
    if ref.exists():
        cmd += ["--reference-doc", str(ref)]

    subprocess.run(cmd, check=True)
    print(f"wrote {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
