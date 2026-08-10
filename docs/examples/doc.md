---
title: MarkTypst Sample Document
---

*Generated with `mark-typst build doc.md` — Markdown → pandoc → typst → PDF.*

## Typography

Body text is set in **Georgia** (serif), headers in **Impact** (sans-serif) —
both standard macOS fonts; swap in any installed font (e.g. from
[Google Fonts](https://fonts.google.com)) via `.env`. You can combine *italic*,
**bold**, ***bold italic***, `inline code`, ~~strikethrough~~ and
footnotes[^1] freely.

[^1]: Footnotes end up at the bottom of the page, typeset by typst.

> Blockquotes work too: "Typst compiles in milliseconds, pandoc speaks
> every Markdown dialect — together they make beautiful PDFs."

## Lists

1. Ordered lists
2. With multiple items
   - and nested bullets
   - like this one

## Code

```bash
# syntax highlighting comes from pandoc
mark-typst init          # install tools + create .env & template
mark-typst build doc.md  # → doc.pdf in the same folder
```

## Tables

| Setting     | .env variable  | Default        |
|-------------|----------------|----------------|
| Body font   | `FONT_BODY`    | Georgia        |
| Header font | `FONT_HEADERS` | Impact         |
| Font size   | `FONT_SIZE`    | 11pt           |
| Paper       | `PAPER_SIZE`   | a4             |
| Logo        | `LOGO`         | *(empty)*      |

## Math & more

Inline math like $E = mc^2$ and display math:

$$\int_0^\infty e^{-x^2}\,dx = \frac{\sqrt{\pi}}{2}$$

---

Images with relative paths work as well:

![MarkTypst icon](../icon/android-chrome-192x192.png){width=64px}
