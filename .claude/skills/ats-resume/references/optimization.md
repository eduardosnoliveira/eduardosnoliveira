# ATS and LinkedIn optimization rules

Detailed reference for Phase 1 of the `ats-resume` skill.

## How ATS actually screens

Most applicant tracking systems parse the document into fields (contact, work history, skills, education) and then score the text against the job posting's keywords. Two things sink a resume:

1. **Parsing failures** — the system can't read a section because of layout.
2. **Keyword gaps** — the resume doesn't use the words the posting uses.

### Formatting rules that protect parsing

- One column. No tables, text boxes, or multi-column layouts in the body.
- No images, icons, logos, or charts. Skill ratings as bars/graphics are invisible to ATS.
- No content in the document header/footer region — parsers often skip it. Keep contact info in the body.
- Standard section titles, spelled plainly: `Summary`, `Skills`, `Experience`, `Education`, `Certifications`. Avoid cute names like "Where I've Made an Impact."
- Standard fonts (Calibri, Arial, Georgia). Real bullet characters, not custom glyphs.
- Dates in a consistent `Mon YYYY – Mon YYYY` format. Spell the month or use a consistent abbreviation.
- Save as `.docx` for upload when the posting allows it; PDF only when it asks for PDF. `.docx` parses most reliably.
- File name: `Eduardo-Oliveira-Resume.docx` — name, role optional, no spaces-as-underscores soup.

### Keyword rules

- Mirror the job posting's exact phrasing. If it says "event-driven architecture," use that, not "message-based systems."
- Provide both the spelled-out term and the acronym on first use: `Domain-Driven Design (DDD)`, `Test-Driven Development (TDD)`, `Amazon Web Services (AWS)`. Parsers and recruiters search either form.
- Put the most important keywords in the Summary and Skills sections — they're weighted and scanned first.
- Keep a real Skills section with concrete nouns (languages, frameworks, cloud services, databases, practices). This is the densest keyword block.
- Quantify. "Reduced MTTR 40%" beats "improved reliability" for both ATS scoring and human readers.
- Don't keyword-stuff or hide white text. Modern ATS flags abnormal keyword density, and recruiters notice.

## LinkedIn recruiter search

LinkedIn Recruiter ranks profiles on keyword matches across the headline, About, skills, job titles, and experience text. Where keywords sit matters.

### Headline (220 chars)

- Lead with the role title recruiters search, then 3–5 keywords.
- Include seniority and the core stack: `Senior Backend Engineer | .NET, C# | AWS | Microservices, DDD | Distributed Systems`.
- "Open to" / remote signals can go at the end.

### About (first 3 lines are gold)

- The first ~2–3 lines show before "see more" and carry the most search weight. Put role + top keywords there.
- Then keep the human voice. Recruiters skim, but humans still read it once you're shortlisted.
- Work in the keywords a recruiter would type: tech names, architecture styles, domains.

### Skills section

- LinkedIn matches against its own canonical skill names. Use them: `Amazon Web Services (AWS)`, `Microservices`, `.NET`, `C#`, `Domain-Driven Design (DDD)`.
- The top 3 pinned skills are weighted most — pin the ones tied to target roles.

### Experience entries

- Each role's title field should contain a searchable title, not a cryptic internal one.
- Repeat core keywords naturally across roles (AWS, .NET, microservices) so the profile reinforces them.

## Keeping it human

ATS density and human readability are not in conflict if you:

- Lead bullets with a verb and a result, then name the tech.
- Use keywords as nouns in real sentences, not a comma-soup dumped into prose.
- Run the `humanizer` checks afterward so the keyword pass doesn't reintroduce AI tells (trailing -ing clauses, em dashes, filler adjectives, rule-of-three padding).
