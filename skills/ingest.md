# Nucleus DevNote Ingest Skill

## Purpose

Convert raw research materials from external collaborators into a draft
Nucleus DevNote (`main.md`) suitable for human review and publication.
All scientific content — prose, parameter values, tables, and sequences —
is reproduced verbatim from the source. The only permitted transformation
is reordering sections to match the Nucleus style guide section order.
If a style-guide section is missing from the source, flag it with REVIEW
rather than authoring it. Human review is always required before publishing.

## Reference

Always use `skills/devnote-style-guide.md` as the quality anchor.
The target output should match the structure, tone, and conventions
observed in the migrated DevNotes. When in doubt, refer to a specific
migrated example.

## Before you start — confirm the slug

Before creating any files or directories, ask the user:

> **What should the slug be for this DevNote?**
> The slug becomes the output directory name (`output-devnotes/<slug>/`) and the
> MECA archive filename (`<slug>-archive.zip`). It should reflect the content's
> identity — the lab, course, or experiment — not the venue or event where it
> was presented. For example, `calpoly-course-guide` not `cshl-course-guide`.

Use the confirmed slug for:
- The output directory: `output-devnotes/<slug>/`
- The archive filename in `base.yml`: `<slug>-archive.zip`

Do not infer the slug from the source filename or event name without confirming
with the user first.

## Input types

### Type 1 — Word document (Google Doc export)
Preprocess before running the skill:
```bash
pandoc input.docx -o content.md --extract-media=figures/
```
This produces:
- `content.md` — the narrative content with figures replaced by
  `![](figures/imageN.png)` references
- `figures/` — directory containing extracted embedded images

Pass `content.md` to the skill. Note the figure filenames so they
can be renamed to meaningful names during review.

### Type 2 — Notion markdown export
Notion exports produce a `.md` file with a sibling directory of assets.
Preprocess:
- Strip Notion-specific artifacts: checkbox syntax (`- [ ]`),
  callout blocks (`> 💡`), toggle blocks
- Flatten any Notion database table exports (CSV files in the export)
- Pass the cleaned markdown to the skill alongside the asset inventory

### Type 3 — Mixed directory (notebooks + data + docs)
Inventory the directory first:
- List all `.ipynb`, `.md`, `.docx`, `.csv`, `.xlsx`, `.gb`, `.png` files
- Identify the primary narrative source (usually a `.md` or `.docx`)
- Note data files separately — these inform the Specification section
  and may trigger MyST directive suggestions

Pass the narrative content + file inventory to the skill.

## Pandoc output conversion

Pandoc converts `.docx` formatting to Markdown notation that does not
always render correctly in MyST. Convert these after running pandoc:

**Subscripts:** Pandoc produces `~text~` for subscript. MyST table cells
require the inline role syntax. Convert all instances:
```
~N~  →  {sub}`N`
```
Exception: `~` used as "approximately" in prose (e.g., `~10 times`,
`~2 min`) must NOT be converted — only convert `~N~` that originated
from formatted subscript text in the source.

**Superscripts:** Pandoc produces `^text^` for superscript. Convert:
```
^N^  →  {sup}`N`
```

**Underline:** Pandoc produces `[text]{.underline}`. Two distinct cases:

*Typographical underline* (prose, captions, labels) — convert to MyST inline role:
```
[text]{.underline}  →  {underline}`text`
```

*Sequence region marker* (underline denotes a biological domain within a DNA/RNA
sequence in a table cell, often spanning `<br>` line breaks and containing nested
bold/italic formatting) — use HTML, which can wrap across `<br>` tags and contain
other inline markup:
```
[SEQUENCE]{.underline}  →  <u>SEQUENCE</u>
```
These are structurally different: the first is typography, the second is a
line-break-spanning region annotation that cannot be expressed with the MyST
inline role.

**Highlight:** Pandoc produces `[text]{.mark}`. No direct MyST equivalent —
convert to plain text and flag:
```
[text]{.mark}  →  text<!-- REVIEW: highlighted in source -->
```

**Grid table column boundaries:** When a Word table has narrow columns,
pandoc word-wraps cell content across multiple lines within each grid cell.
This makes column boundaries hard to read and easy to misparse. Example:

```
| Full TX  | G_1    | G{u1,rbs2} | [sequence] |
| unit     | T7t    | [s~4~u],   |            |
|          | sCFP3A |            |            |
```

Here column 1 is `Full TX unit` and column 2 is `G_1 T7t sCFP3A` — they
are separate cells. The failure mode is concatenating content from adjacent
columns into one cell (e.g. writing `Full TX unit T7t sCFP3A` in column 1).

When parsing pandoc grid tables:
- Read each `|`-delimited column position independently across all wrapped lines
- Reconstruct each cell by joining only the text at that column position
- Never merge content across `|` boundaries

## Preprocessing checklist

Before running the skill, confirm:
- [ ] Narrative content is in plain markdown (pandoc conversion done
      if source was .docx)
- [ ] Pandoc subscripts (`~N~`) converted to `{sub}`N``
- [ ] Pandoc superscripts (`^N^`) converted to `{sup}`N``
- [ ] Pandoc underlines (`[text]{.underline}`) converted: typographical → `{underline}`text``, sequence region markers → `<u>text</u>`
- [ ] Pandoc highlights (`[text]{.mark}`) converted to plain text + REVIEW flag
- [ ] Figures extracted to `figures/` directory
- [ ] File inventory prepared (list of all data files, notebooks,
      sequence files)
- [ ] Any existing frontmatter or metadata noted (title, authors,
      date, institution)

## Fidelity rules

These rules are absolute and override all other instructions:

**Narrative content:** Never rewrite, paraphrase, expand, or add
interpretive language to prose from the source. If the source says
"to test whether X", the output says "to test whether X" — not
"to determine whether X" or "to confirm whether X". Preserve the
author's words. You may move prose between sections but you may
not change it.

**Parameter values:** Never change a numeric value, unit,
concentration, volume, temperature, wavelength, or duration
from the source. Copy exactly as stated. If a value is missing
or ambiguous, use — and add a REVIEW flag.

**Table structure:** You may restructure tables to the Nucleus
six-column schema and separate conditions into tab-sets. The
organization of data may change. The data itself does not.
Never drop a table column. Never drop a table row. If a column
does not map to the six-column schema, retain it as-is.

**Sequences:** Reproduce all DNA and RNA sequences in full.
Never substitute an inline sequence table with a pointer to an
external resource (e.g. Benchling, repository link). The DevNote
must be self-contained. Links to external resources may be added
alongside the inline content but do not replace it.

**Missing style-guide sections:** If the source does not contain
a section required by the style guide (e.g. Abstract, Conclusions),
do not author one. Instead insert:
```
REVIEW: [section name] not present in source — add before publishing.
```
The only exception is section-level reordering: you may reorder
top-level sections to match the style guide sequence, and must flag
each reorder with a comment:
```
<!-- REORDERED: moved from "[original position]" to match style guide -->
```

**Section names:** If the source uses a non-standard section name
that maps to a style-guide section (e.g. "Performance data" →
"Results"), rename it and flag the change:
```
<!-- RENAMED: "Performance data" → "Results" to match style guide -->
```

## Skill prompt

Use this prompt, substituting the bracketed sections with actual content:

---

You are converting raw research materials into a Nucleus DevNote.

## Fidelity rules (absolute — override all other instructions)

**Narrative content:** Never rewrite, paraphrase, expand, or add
interpretive language to prose from the source. If the source says
"to test whether X", the output says "to test whether X" — not
"to determine whether X" or "to confirm whether X". Preserve the
author's words. You may move prose between sections but you may
not change it.

**Parameter values:** Never change a numeric value, unit,
concentration, volume, temperature, wavelength, or duration
from the source. Copy exactly as stated. If a value is missing
or ambiguous, use — and add a REVIEW flag.

**Table structure:** You may restructure tables to the Nucleus
six-column schema and separate conditions into tab-sets. The
organization of data may change. The data itself does not.
Never drop a table column or row. Retain all columns even if
they do not map to the standard schema.

**Sequences:** Reproduce all DNA and RNA sequences in full inline.
Never substitute a sequence table with a link to Benchling or
any external resource.

**Missing sections:** If a section required by the style guide is
absent from the source, insert a REVIEW flag — do not author content.
If a source section name differs from the style guide name, rename it
and insert a REVIEW comment noting the original name.

## Quality reference

A good DevNote has the following properties (from the Nucleus style guide):
- A one-sentence description that summarizes the key finding
- A Context section that motivates the work and situates it in
  the Nucleus platform
- A Methods section with at least one composition table using
  the standard six-column schema:
  Component | Input concentration | Unit | Final concentration | Unit | Volume (µL)
- A Results section with at least one figure reference and a
  paragraph interpreting the result
- A Specification section that distills the key protocol parameters
  a reader would need to reproduce the result
- Formal scientific prose, past tense for experimental actions,
  present tense for conclusions
- Quantitative results stated with precision and units

A complete DevNote can be described in one sentence. If the source
material doesn't support a one-sentence summary, the DevNote may
not be ready to publish.

## Source materials

**File inventory:**
[List all files in the directory: name, type, brief description]

**Narrative content:**
[Paste content.md from pandoc conversion, or cleaned Notion markdown]

**Existing metadata (if found):**
[Title, authors, date, institution, any frontmatter from source]

## Task

1. Produce `main.md` with correct frontmatter. Transcribe all source
   content verbatim — do not author, expand, or interpret.
2. Reorder top-level sections to match the style guide sequence where
   needed. Flag each reorder with a comment. If a style-guide section
   is absent from the source, insert a REVIEW flag — do not write it.
   Style guide section order:
   - Overview / Introduction
   - Composition / Methods
   - Results
   - Conclusions
3. Reformat composition/reaction tables to MyST `:::{table}` directives.
   Retain all source columns and rows exactly. If a column maps to the
   standard six-column schema, use that header; if not, keep the
   source column name. Use `—` for missing values. Plain text only
   in cells — no bold, no inline markdown.
   Convert pandoc subscript/superscript notation in table cells:
   - `~N~` → `{sub}`N`` (subscript)
   - `^N^` → `{sup}`N`` (superscript)
   Do NOT convert `~` used as "approximately" in prose.
4. Convert figure references to MyST figure directives with verbatim
   captions from the source:
   ```
   :::{figure} figures/[filename].png
   :label: fig-[descriptive-slug]
   :width: 75%
   [Caption verbatim from source]
   :::
   ```
   MyST auto-generates the "Figure N:" prefix from the label. Strip any
   leading figure number from the source caption — do not write
   "Figure 2: ..." or "**Figure 2**:..." in the caption body. The caption
   should begin with the description text directly.

   **Figure label naming:** Use a descriptive slug based on what the
   figure shows (`fig-osmolarity`, `fig-emulsion-transfer`, `fig-popc`),
   not the pandoc-generated filename (`fig-image5`). The slug becomes
   the cross-reference target and must be meaningful to a reviewer.

   **No caption in source:** If the source has no caption for a figure,
   describe what the figure shows based on the image content and flag it:
   ```
   REVIEW: no caption in source — [brief description of what figure shows];
   confirm caption with authors before publishing
   ```
   Do not leave the caption body blank.

4a. After placing each figure directive, add an inline cross-reference
    in the nearest sentence that discusses what the figure shows:
    ```
    ...osmolarity of the surrounding solution ({ref}`fig-osmolarity`).
    ```
    This connects the figure to its explanatory text. For figures that
    appear before their discussion paragraph, place the reference at the
    end of the first sentence in that paragraph.

5. Note data files for reviewer attention using REVIEW flags:
   - `.gb` or `.dna` files → REVIEW: consider seqviz directive
   - `.csv` files → REVIEW: confirm Nucleus naming convention
   - `.xlsx` files → REVIEW: confirm naming
6. Flag any field that requires human decision using:
   `REVIEW: [specific reason]`

## Frontmatter schema

```yaml
---
title: [concise, specific title]
description: |
  [verbatim from source abstract if present — otherwise synthesize one sentence
  from the content and flag: REVIEW: synthesized — verify before publishing]
date: [from source metadata or REVIEW: not found]
authors:
  - name: [from source]
    affiliation: [from source]
    email: [from source or REVIEW: missing]
keywords:
  - [3-6 keywords relevant to the work]
license: CC-BY-4.0
thumbnail: figures/[most representative figure filename]
collections:
  - REVIEW: inferred — [suggested collection based on content]
id: dn-[year]-ccby-[slugified-title]
---
```

Note on license: use CC-BY-4.0 as default for external collaborator
submissions. Flag as REVIEW if the content contains protocol-level
specifications or formulations that may warrant CERN-OHL-P-2.0.

## Do not

- Invent scientific content not present in the source materials
- Rewrite results to sound more significant than the source states
- Fill in missing concentration values by inference
- Remove negative or inconclusive results
- Combine content from multiple experiments into a single claim
  unless the source explicitly does so
- Author a section (Abstract, Conclusions, Results narrative) that
  does not exist in the source — use a REVIEW flag instead
- Substitute an inline sequence table or data table with a pointer
  to an external resource (Benchling, repository, supplementary)
- Drop table columns because they do not fit a standard schema
- Silently rename section headings — always flag the rename

## Flag format

For any field or section that cannot be confidently generated from
the source:
```
REVIEW: [specific reason — what is missing, what decision is needed]
```

Examples:
- `thumbnail: "REVIEW: figure file needs to be renamed from image1.png"`
- `collections: "REVIEW: inferred — nucleus-core, cal-poly"`
- In Results: `REVIEW: source figure embedded in Word doc —
  extract figures/image1.png and rename to figures/[descriptive-name].png`

---

## Output structure

```
[devnote-slug]/
├── main.md           # generated by this skill — requires human review
├── myst.yml          # minimal project config
├── figures/          # extracted from source (rename from imageN.png
│   └── *.png         # to descriptive names during review)
├── [data files]      # copied from source with Nucleus naming convention
│   ├── composition.csv    # if reaction composition data present
│   ├── platemap.csv       # if well layout data present
│   └── results.csv        # if quantitative results present
└── [notebooks]       # copied from source if present
    └── analysis.ipynb
```

### `myst.yml` format

```yaml
version: 1
project:
  title: [title]
  toc:
    - file: index.md
    - file: analysis.ipynb  # if present
```

Do NOT include `site:` in the subdirectory myst.yml.
Do NOT include `project.id`.

## Known gaps and human review checklist

After running the skill, the human reviewer should:

- [ ] Fill in all `REVIEW:` flagged fields
- [ ] Rename extracted figures from `imageN.png` to descriptive names
      matching the figure directive references in `main.md`; update
      the figure directive paths and labels to match
- [ ] Confirm all REVIEW-flagged figure captions with authors —
      captions synthesized from image content are not verbatim from source
- [ ] Verify composition table column values are correct — do not
      publish concentration values that haven't been confirmed
- [ ] Confirm license — upgrade to CERN-OHL-P-2.0 if content
      includes Nucleus-compatible protocol specifications
- [ ] Assign collections once collection taxonomy is defined
- [ ] Confirm the one-sentence description accurately represents
      the key finding
- [ ] Check that the Specification section is complete enough for
      a reader to reproduce the experiment
- [ ] Run `myst build` locally to confirm figures render correctly
      before pushing to the content repo
- [ ] Run `vale index.md` (or `main.md`) and fix any flagged notation
      issues — see "Notation and units" in the style guide

## Table formatting rules

Composition tables must follow the standard Nucleus schema:

| Component | Input concentration | Unit | Final concentration | Unit | Volume (µL) |
| --- | --- | --- | --- | --- | --- |

Rules:
- Use `—` for missing or not-applicable values
- Plain text only in table cells — no bold, no inline markdown
- Totals row as plain text: `Total` not `**Total**`
- Notes about mastermix assembly go below the table directive,
  not inside it
- If source table uses non-standard columns, retain them as-is — do
  not reconstruct or drop columns to fit the standard schema

**Tab-sets for related tables:** Group ≥2 related sequential tables
into a MyST tab-set. This preserves all content while improving
information density. Approved for: DNA component tables (primers,
input templates, full TX units, overlap PCR sequences), protocol
tables (reaction setup variants, thermocycler protocols). Each table
becomes a tab-item with a short descriptive tab label.

**Tab-set placement:** Always place a tab-set *before* the prose or
numbered steps that reference its tables via `{numref}`. When a
`{numref}` reference appears in the document before the tab-set that
defines the label (a forward reference), MyST may assign both tables
in the tab-set the same number. Placing the tab-set first — so tables
are defined before they are referenced — avoids this. This mirrors
standard scientific writing practice: show the table, then refer to it
in the steps.

**Tab-set nesting depth:** Use exactly five colons for the tab-set
fence, four for each tab-item fence, and three for nested directives
(tables, figures) inside tab-items. Mismatched depths cause the MyST
parser to misinterpret closing fences, rendering tab content as raw
markdown code rather than rendered output:

```
:::::{tab-set}
::::{tab-item} Label A
:::{table} Title
| ... |
:::
::::
::::{tab-item} Label B
:::{table} Title
| ... |
:::
::::
:::::
```

Never use the same colon depth for tab-items and their nested
directives — the parser cannot distinguish their closing fences.

**Long sequences in table cells:** Break DNA/RNA sequences longer than
~60 characters with `<br>` tags within the cell. This prevents
off-page overflow while keeping sequences in-table. Content is verbatim.

## References and Resources

Do NOT include a standalone References section. `[](DOI)` inline links
cause MyST to auto-generate a References section — a second one is
redundant and will duplicate entries.

DO include a **Resources** section for items that cannot be cited by
DOI: Benchling links, CoLab notebooks, software documentation,
sequence compiler tools, plasmid repositories. These would not appear
in the auto-generated reference list.

## Differences from migrate skill

| | migrate | ingest |
| --- | --- | --- |
| Source | Existing DevNote | Raw research materials |
| Content | Verbatim | Verbatim |
| Section mapping | Preserve as-is | Reorder to style guide; flag each move |
| Missing sections | N/A | REVIEW flag — do not author |
| Quality bar | Already published | Draft — requires human review |
| Figure handling | Copy paths as-is | Extract from Word doc, flag for renaming |
| Table handling | Verbatim | Verbatim; reformat to MyST directive only |
| Output | Near-publishable | Draft for review |

## Observations from second ingest test (CSHL course guide, July 2026)

The source was a Word doc lab manual for a CSHL synthetic cells course
covering cell-free protein synthesis and liposome encapsulation.

- Source had no figure captions — pandoc extracted five images as
  `image5.png`–`image9.png` with no associated text. Labels were
  synthesized from the image content and flagged REVIEW.
- Pandoc image numbering did not reflect source order — the source's
  "osmolarity diagram" and "vesicle diagram" descriptions were swapped
  relative to the extracted filenames. Always open extracted images
  to verify content; do not rely on source alt-text or order.
- Tab-set nesting broke during transformation: a script accidentally
  collapsed tab-item fences (4 colons) to the same depth as table
  fences (3 colons). The MyST parser could not distinguish tab-item
  closers from table closers, rendering the second tab-item as raw
  markdown. Fixed by restoring correct depth (5/4/3).
- Source was a course guide (not a research DevNote) — Results and
  Conclusions sections were absent and correctly omitted rather than
  authored. REVIEW flags were inserted for author, date, and abstract.
- Cross-references added inline for all five figures after placement,
  connecting each figure to the sentence in the text that discusses it.

## Observations from first ingest test (Cal Poly, April 2026)

The source was a Word doc following a DevNote-adjacent lab manual
template (CHEM 471). Key observations:

- Source already had DevNote-like structure (Overview, Protocol,
  Results) — mapping to Context/Methods/Results/Specification
  was straightforward
- Composition table had only three columns (Stock, Final, Volume)
  rather than six — reconstructed with `—` for missing values
- Bill of Materials table present but not mappable to Nucleus schema —
  ignored, components carried into composition table from protocol
- Figure embedded in Word doc as `media/image1.png` — needs
  extraction via pandoc `--extract-media` flag
- Stock concentrations for commercial kits (PURExpress Solution A/B)
  are proprietary and should be recorded as `—`
- Two authors with institutional emails — both included in frontmatter
- Source referenced a lab manual rather than primary literature —
  flagged but not blocking for publication