#!/bin/bash
# Moves SOAP .md files from ~/Downloads into data/ and pushes them to GitHub.
# Usage: ./sync.sh
set -e
cd "$(dirname "$0")"
moved=0
for f in "$HOME"/Downloads/soap_*_entry.md; do [ -e "$f" ] && mv "$f" data/entries/ && moved=$((moved+1)); done
for f in "$HOME"/Downloads/soap_*_note.md;  do [ -e "$f" ] && mv "$f" data/notes/   && moved=$((moved+1)); done
echo "Moved $moved file(s) into data/."
git add data
if git diff --cached --quiet; then echo "Nothing new to commit."; exit 0; fi
git commit -m "Add SOAP entries/notes $(date '+%Y-%m-%d %H:%M')"
git push
echo "Pushed. Done."
