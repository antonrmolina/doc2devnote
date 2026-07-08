#!/usr/bin/env bash
set -e

echo "==> Checking dependencies for doc2devnote..."

# --- pandoc ---
if command -v pandoc &>/dev/null; then
  echo "  [ok] pandoc $(pandoc --version | head -1 | awk '{print $2}')"
else
  echo "  [missing] pandoc — attempting install..."
  if command -v brew &>/dev/null; then
    brew install pandoc
  elif command -v apt-get &>/dev/null; then
    sudo apt-get update && sudo apt-get install -y pandoc
  else
    echo "  [error] Could not install pandoc automatically."
    echo "          Install it manually: https://pandoc.org/installing.html"
    exit 1
  fi
  echo "  [ok] pandoc installed"
fi

# --- Claude Code CLI ---
if command -v claude &>/dev/null; then
  echo "  [ok] claude $(claude --version 2>/dev/null || echo '(version unavailable)')"
else
  echo "  [missing] Claude Code CLI not found."
  echo "            Install it via: npm install -g @anthropic-ai/claude-code"
  echo "            Or see: https://claude.ai/code"
fi

echo ""
echo "==> Setup complete. To start a workflow:"
echo "    1. Place your input materials in a new input-doc-N/ directory"
echo "    2. For .docx files, run:"
echo "         pandoc your-file.docx -o content.md --extract-media=figures/"
echo "    3. Open Claude Code in this directory and use /ingest or /migrate"
