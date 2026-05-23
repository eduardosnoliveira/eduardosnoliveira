---
name: ats-resume
version: 1.0.0
description: |
  Refine Eduardo's profile and LinkedIn markdown for ATS keyword filters and
  LinkedIn recruiter search, then generate a resume and cover letter as DOCX + PDF
  in English and Portuguese. Use when the user wants to update career documents,
  optimize for ATS or LinkedIn search, or produce a fresh resume / cover letter.
license: MIT
compatibility: claude-code
allowed-tools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
  - AskUserQuestion
  - Bash
  - PowerShell
---

# ATS Resume & Cover Letter Builder

Two jobs, in order:

1. **Refine** the source markdown so it passes ATS keyword filters and surfaces in LinkedIn recruiter search.
2. **Generate** a resume and cover letter as DOCX + PDF, in English and Portuguese.

## Source of truth

These files in the repo root hold all the real content. Never invent facts, numbers, employers, or dates — everything must come from these files or from the user during the grill.

| Purpose | English | Portuguese |
|---|---|---|
| Resume content | `profile.md` | `profile-pt.md` |
| LinkedIn headline / About / experience | `linkedin.md` | `linkedin-pt.md` |

The two languages must stay in sync. A change in one gets mirrored in the other.

## Voice guard (read first)

These files were already de-AI'd. Do not reintroduce AI tells when refining. Keep the rules from the `humanizer` skill in mind:

- No trailing "-ing" impact clauses ("...enabling X and reducing Y").
- No mechanical em dashes — use commas, periods, or parentheses.
- No filler adjectives ("distinct", "mission-critical", "robust", "seamless").
- A resume can be keyword-dense, but it must still read like a person wrote it.

After refining, do a quick humanizer pass over anything you rewrote.

---

## Phase 0 — Grill the user (every run)

Before touching files, ask for what's missing. Use `AskUserQuestion` for the routing choices and plain follow-up questions for free-text numbers. Never fabricate a metric — if the user doesn't have one, leave the bullet qualitative.

Ask about:

1. **Hard numbers.** Walk the bullets that are currently vague and ask for figures:
   - "MTTR is down" → by how much (%/minutes)?
   - "improved I/O throughput" → throughput or latency delta?
   - Scale: requests/sec, data volume, deploys per day, number of microservices owned.
   - "mentor mid-level engineers" → how many?
   - Cost/infra savings, uptime/SLA, incident count reduction.
2. **Target titles** for LinkedIn search (e.g., Senior Backend Engineer, Senior Software Engineer .NET, Staff/Lead, Cloud/Platform Engineer). These drive headline and skills keywords.
3. **Target markets** (global remote, US, EU, Brazil) — affects work-authorization and visa keywords.
4. **Projects / portfolio**: notable GitHub repos, open source, talks, side projects worth a line.
5. **Cover letter target**: a general master (with `[Company]` / `[role]` placeholders) or aimed at a specific posting now.
6. **Anything to emphasize or drop** for the role they're chasing next.

## Phase 1 — Refine for ATS + LinkedIn

Apply the rules in `references/optimization.md`. Summary of the highest-value moves:

**ATS (the resume files):**
- Use standard section headings: Summary, Skills, Experience, Education, Certifications. ATS parsers look for these exact words.
- Spell out then abbreviate on first use: "Domain-Driven Design (DDD)", "Continuous Integration / Continuous Delivery (CI/CD)". Parsers match both forms.
- Mirror the language a recruiter would search. Keep both the noun and the tech: "event-driven architecture", "microservices", "AWS", "Kubernetes".
- Front-load each bullet with a strong past-tense verb (current role can stay present tense) and put the metric early.
- Plain formatting only: no tables, text boxes, columns, headers/footers, images, or icons in the resume body. These break ATS parsing.
- Keep dates as `Mon YYYY – Mon YYYY` consistently.

**LinkedIn (the linkedin files):**
- Headline: lead with the role + top 3–4 search keywords. Pipe-separated is fine.
- About: put the heaviest keywords in the first 2–3 lines (the part shown before "see more").
- Mirror the exact skill names LinkedIn lists as Skills (e.g., "Amazon Web Services (AWS)", "Microservices", ".NET").
- Keep the human voice already in the file; layer keywords in, don't flatten it.

Edit the source `.md` files in place. Mirror every change across EN/PT. Then run the voice guard.

## Phase 2 — Generate documents

Confirm with the user before generating (they may want to review refinements first).

Output goes to `generated/` in the repo root. Build a clean resume + cover letter markdown for each language, then convert.

### Step 1: build the intermediate markdown

From the refined `profile.md` / `profile-pt.md`, write resume markdown with a **compact contact line** (not a bullet list) so it renders as a proper resume header:

```
# Eduardo Oliveira
Senior Backend Engineer · Coronel Fabriciano, MG, Brazil
eduardosnoliveira@gmail.com · +55 31 998486472 · linkedin.com/in/eduardosnoliveira · github.com/eduardosnoliveira

## Summary
...
## Skills
...
## Experience
...
## Education
...
## Certifications
...
```

Write the cover letter markdown from the same facts. A general master uses `[Company]` and `[role/team]` placeholders and stays under ~300 words.

Files:
- `generated/resume-en.md`, `generated/resume-pt.md`
- `generated/cover-letter-en.md`, `generated/cover-letter-pt.md`

### Step 2: DOCX via pandoc

```powershell
pandoc "generated/resume-en.md"        -o "generated/Eduardo-Oliveira-Resume-EN.docx"
pandoc "generated/resume-pt.md"        -o "generated/Eduardo-Oliveira-Resume-PT.docx"
pandoc "generated/cover-letter-en.md"  -o "generated/Eduardo-Oliveira-CoverLetter-EN.docx"
pandoc "generated/cover-letter-pt.md"  -o "generated/Eduardo-Oliveira-CoverLetter-PT.docx"
```

If `pandoc` is not on PATH, install it: `winget install --id JohnMacFarlane.Pandoc -e --accept-source-agreements --accept-package-agreements`. A fresh install may need a new shell to pick up PATH; call pandoc by full path if needed. On this machine it lives at `$env:LOCALAPPDATA\Pandoc\pandoc.exe` (i.e. `C:\Users\Eduardo\AppData\Local\Pandoc\pandoc.exe`).

### Step 3: PDF via Edge headless (no LaTeX needed)

Render standalone HTML with embedded CSS, then print to PDF with Edge:

```powershell
pandoc "generated/resume-en.md" -s --embed-resources -c ".claude/skills/ats-resume/assets/resume.css" --metadata pagetitle="Eduardo Oliveira - Resume" -o "generated/resume-en.html"

$edge = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if (-not (Test-Path $edge)) { $edge = "C:\Program Files\Microsoft\Edge\Application\msedge.exe" }
& $edge --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="$PWD\generated\resume-en.pdf" ("file:///" + (Resolve-Path "generated/resume-en.html").Path -replace '\\','/')
```

Repeat for each file. Delete the intermediate `.html` afterward unless the user wants it.

### Fallback

If pandoc can't be installed, generate the standalone HTML anyway and tell the user to open it and "Save as PDF" from the browser. Markdown stays as the always-available output.

## After generating

Report exactly what was produced (paths), confirm whether you used pandoc/Edge or a fallback, and note any bullet left qualitative because the user had no number. Offer to tailor a copy to a specific job description next.
