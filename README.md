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
