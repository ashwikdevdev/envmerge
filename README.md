## envmerge | environment variable management tool | merge .env files interactively

Small, local web UI to build a new `.env` from a `.env.example` and one or
more older `.env` files. The app helps you skim template fields, shows matches
from older files, and lets you pick values with keyboard shortcuts or type
manual values. All the data remains in a local browser session so none of your sensitive information and secrets are exposed to either me or the internet. Never input secrets and .env secrets in any internet field. Go DevOps!

Features
- Load a `.env.example` (template) that declares keys and default values.
- Add up to 3 source `.env` files (columns A/B/C) to pull existing values from.
- Move focus through template fields with the keyboard and highlight matches
  found in source columns.
- Assign a value to the focused template field from a source column via
  keyboard shortcuts or by clicking a source value.
- Edit a value manually and export the merged `.env` for download.

Keyboard shortcuts (current plan)
- `ArrowDown` / `ArrowUp` (or `j` / `k`): move focus through template fields.
- `1`, `2`, `3`: pull value from Source A / B / C for the focused field.
- `Ctrl+1`, `Ctrl+2`, `Ctrl+3`: alternative hotkeys to assign from sources
  (can be added as a configurable option).
- `Enter`: edit the focused field manually.
- `Backspace` / `Delete`: clear the focused field's value.
- When a template key is focused, any matching rows in source columns are
  visually highlighted to make selection easy.

Run locally
1. From the project root, run the bundled serve script:

```bash
cd envmerge-project
./serve.sh
# open http://localhost:8000
```

2. Or open `index.html` directly in a browser.

Project layout
- `index.html` — single-file UI (HTML/CSS/JS) for the envmerge app.
- `assets/favicon.svg` — project favicon.
- `serve.sh` — tiny script that runs `python3 -m http.server` for quick testing.

How it works (implementation notes)
- The UI shows one `Template` column (master) and up to 3 `Source` columns.
- Template fields are listed in the master column; focused field is tracked in
  JavaScript and triggers highlighting in source columns.
- Assigning a value from a source records the selection as coming from that
  source (A/B/C) and advances focus to the next field.

Next steps (planned)
1. Add configurable keyboard mappings (including `Ctrl+1/2/3`).
2. Persist session state in localStorage so you can resume work.
3. Add import/export of raw `.env` files and optional history of previous
   merges.

Contribute
- Open issues or PRs against this repository. If you want me to implement a
  specific shortcut behavior from your mockup, attach the mockup and I'll
  iterate on the UI.

Assets / attribution
- Favicon: `assets/favicon.svg` (original icon attribution: Process icons by
  orvipixel — Flaticon — https://www.flaticon.com/free-icons/process)

License
- MIT-style (add your preferred license file if you want to publish).

If you'd like, I can start implementing the keyboard mapping changes now or
scaffold session persistence — tell me which next item to work on.
# envmerge Project

This is a small wrapper project containing a copy of the env-merge UI.

How to run

Open `index.html` in a browser, or serve the folder locally:

```bash
cd envmerge-project
./serve.sh
# then visit http://localhost:8000 in your browser
```

Favicon

The project includes `assets/favicon.svg`. The original icon attribution:

Process icons created by orvipixel — Flaticon
https://www.flaticon.com/free-icons/process

If you want to replace the favicon, put an image at `assets/favicon.svg`.

Notes

- `index.html` currently embeds the original `env-merge (1).html` via an iframe
  so you can continue editing the original in-place. If you prefer a single
  file, copy the UI markup into `index.html` and update the favicon link.
