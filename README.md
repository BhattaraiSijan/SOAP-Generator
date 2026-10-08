# OB/GYN SOAP Note Generator

Single-file web app for FNP clinical documentation practice. No server, login, or install.

**Live app:** https://bhattaraisijan.github.io/SOAP-Generator/

## Use it
1. Open the live link above (or double-click `index.html`).
2. Set findings with the Yes/No dropdowns, add details, click **Generate SOAP Note**.
3. Review the suggested ICD-10-CM codes (edit or remove any), then **Copy** or **Print**.
4. **Save Entry (.md)** downloads your raw entries; **Save Note (.md)** downloads the note.

## Save entries and notes to this repo
```bash
./sync.sh
```
That moves `soap_*_entry.md` / `soap_*_note.md` from `~/Downloads` into `data/entries/` and `data/notes/`, commits, and pushes.

Drafts also autosave in your browser; **Reset All** clears them.

> Practice data only. This repo is public: never commit real patient information.
