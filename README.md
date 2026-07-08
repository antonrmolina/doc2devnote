# README

## Purpose
 
 This repository exists to refine a skills based workflow for taking unstructured project repositories `input-doc*` and transform them into DevNotes.

 ## Setup

 Run the setup script to check and install dependencies:

 ```bash
 bash startup.sh
 ```

 This checks for `pandoc` and the Claude Code CLI, and installs `pandoc` automatically via Homebrew (macOS) or apt (Linux) if missing.

 ## Dependencies

 A key dependency for this workflow is pandoc. In general, `.docx` files can be transformed into markdown with images extracted using:

 ```
 pandoc input.docx -o content.md --extract-media=figures/
 ```

 ## Checking DevNote prose

 DevNote prose (units, chemical notation, ion charges, house casing, etc.) is linted with [Vale](https://vale.sh) against the rules in `styles/nucleus/`, ported from the `nucleus-docs` "Docs maintenance" repo. `startup.sh` installs `vale` if it's missing.

 Run it against a DevNote's manuscript before publishing:

 ```bash
 vale output-devnotes/[devnote-slug]/main.md
 ```

 Target `main.md` files explicitly rather than `vale .` — some `output-devnotes/` subdirectories have build artifacts (`_build/`, `node_modules/`) checked in that aren't DevNote prose.

 