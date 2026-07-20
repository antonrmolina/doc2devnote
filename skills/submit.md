# Nucleus DevNote Submit Skill

## Purpose

Prepare a MyST DevNote draft (`main.md` or equivalent) for submission to the
Nucleus DevNotes venue (`bnext-devnotes`) on Curvenote. This skill picks up
where the ingest or migrate skill leaves off — the manuscript exists and has
been reviewed; the goal is to produce a valid `curvenote.yml` and pass all
venue submission checks.

Human review of all REVIEW-flagged fields is required before submitting a
non-draft version.

## Prerequisites

- Curvenote CLI installed and authenticated:
  ```bash
  curvenote token check
  ```
- A reviewed `main.md` (or `main-3.md` etc.) with correct frontmatter
- A `base.yml` in the DevNote directory (shared fields — see below)

## Config file rules

**`curvenote.yml` and `myst.yml` cannot coexist** in the same directory.
The Curvenote CLI throws `Multiple config files` if both are present.
`curvenote.yml` is a superset of `myst.yml` — it replaces it entirely.

If a `myst.yml` exists from the ingest/migrate step, rename it:
```bash
mv myst.yml myst-old.yml
```

## Two-file config structure

DevNotes use a two-file pattern: `base.yml` holds shared venue-level fields
inherited by all DevNotes; `curvenote.yml` holds per-DevNote fields and
extends base.

### `base.yml` — shared across all DevNotes

```yaml
version: 1
project:
  license: CC-BY-4.0
  open_access: true
  venue: Nucleus
  subject: Developer Note
  github: https://github.com/bnext-bio/nucleus-developer-notes
  references:
    devnotes: https://devnotes.bnext.bio
  jupyter: true
  exports:
    - format: meca
    - format: typst
      template: https://github.com/curvenote-templates/bnext.git
      article: main.md
      output: devnote.pdf
      id: article
  requirements:
    - environment.yml
  resources:
    - figures/**/*
    - general/**/*
    - General/**/*
    - experiments/**/*
    - Experiments/**/*
    - resources/**/*
    - Resources/**/*
    - plasmids/**/*
    - Plasmids/**/*
  downloads:
    - id: article
      title: Download Article PDF
site:
  template: article-theme
  nav: []
```

Do NOT include in base.yml:
- `keywords` — per-DevNote, goes in `curvenote.yml`
- `plugins` — add only if the specific DevNote needs them
- `abbreviations` — per-DevNote, goes in `curvenote.yml` or `main.md` frontmatter

### `curvenote.yml` — per-DevNote minimal fields

```yaml
version: 1
extends: base.yml
project:
  id: <uuid>                    # generate with: python3 -c "import uuid; print(uuid.uuid4())"
  title: '<title>'
  date: '<YYYY-MM-DD>'
  authors:
    - name: Corresponding Author
      corresponding: true
      email: author@institution.edu
      orcid: 0000-0000-0000-0000
      affiliations:
        - name: Institution Name, City, State, Country
    - name: Second Author
      affiliations:
        - name: Institution Name, City, State, Country
  keywords:
    - keyword one
    - keyword two
    - keyword three
  thumbnail: ./figures/<results-figure-with-white-background>.png
  exports:
    - format: meca
    - format: typst
      template: https://github.com/curvenote-templates/bnext.git
      article: main.md          # change if article file is not main.md
      output: devnote.pdf
      id: article
  toc:
    - file: main.md             # primary manuscript
    # - file: experiments/YYYYMMDD-name/analysis.ipynb   # if notebooks present
```

**Note on `exports`:** base.yml sets `article: main.md`. If the DevNote's
primary file has a different name (e.g. `main-3.md`), override the full
`exports` block in `curvenote.yml` with the correct filename.

**Note on `thumbnail`:** choose a figure with a solid (non-transparent)
background. Results figures from matplotlib/notebooks typically have white
backgrounds. Mechanism schematics exported from SVG often have transparent
backgrounds and look poor as thumbnails.

## Draft file hygiene

Draft markdown files at the project root (e.g. `main-2.md`, `main-tables.md`)
cause duplicate label warnings because the CLI scans all `.md` files even if
they are not in the TOC. Move drafts to a `drafts/` subdirectory:

```bash
mkdir drafts/
mv main-old.md main-2.md main-tables.md drafts/
```

Files in subdirectories are not scanned as project pages unless explicitly
listed in the TOC.

## Venue submission checks

The `bnext-devnotes` venue runs 7 checks for the `devnote` kind:

| Check | Source | Required |
| --- | --- | --- |
| Authors present | article frontmatter | Yes |
| Corresponding author has email | article frontmatter | Yes |
| Author ORCIDs | article frontmatter | Optional |
| Author affiliations | article frontmatter | Yes |
| Keywords present | curvenote.yml | Yes |
| Keywords unique | curvenote.yml | Yes |
| DOIs resolve | main.md citations | Yes |

**Important:** the author checks read from the article frontmatter (`main.md`),
not from `curvenote.yml`. Author email and ORCID must be present in the
article's `authors:` block to pass those checks — fields in `curvenote.yml`
alone are not sufficient.

Run checks before submitting:
```bash
curvenote check bnext-devnotes
```

## Submitting

Available collections in `bnext-devnotes`:
- `nucleus-core` — primary Nucleus DevNotes
- `nucleus-contrib` — community contributions
- `staging` — test submissions
- `developer-cells` — DevCells content
- `devcells-node-london`, `devcells-node-chicago` — node-specific
- `latest`, `london-pinned`, `chicago-pinned`, `ai-scientist` — other

Draft submission (not processed by venue, 30-day CDN retention):
```bash
curvenote submit bnext-devnotes --draft --collection nucleus-contrib -y
```

Full submission:
```bash
curvenote submit bnext-devnotes --collection nucleus-contrib -y
```

The CLI will print a build report URL on success.

## Known non-blocking warnings

These appear during check/submit but do not block submission:

- **`tabSet` unhandled JATS conversion** — tab-sets are not supported in JATS
  XML export. The HTML/site rendering is unaffected. Known MyST limitation.
- **Link 403 errors** — some vendor sites (NEB, Greiner) block crawlers and
  return 403. Links are valid; ignore these warnings.
- **`abstract` missing from typst export** — the PDF template expects a
  `parts.abstract` block. Add an abstract to `main.md` using MyST parts syntax
  if PDF output is needed. Not required for website submission.

## Checklist before non-draft submission

- [ ] All `REVIEW:` flags resolved in `main.md` frontmatter and body — including Resources section entries flagged with missing URLs (replace with `[Title](URL)` once URL is confirmed)
- [ ] Corresponding author email and ORCID in article frontmatter
- [ ] `thumbnail` set to a figure with a solid background
- [ ] `banner.webp` added if available
- [ ] `date` confirmed with authors
- [ ] `keywords` reviewed — 3-6 specific terms, no generic overlap with base.yml
- [ ] Notebooks in TOC are independently runnable (or removed)
- [ ] `curvenote check bnext-devnotes` passes all required checks
