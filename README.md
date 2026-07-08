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

 