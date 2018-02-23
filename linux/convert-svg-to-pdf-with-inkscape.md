### Convert SVG to PDF with Inkscape

I wanted to convert a SVG file to a PDF. After a quick search, I found out the following solution using the Inkscape CLI:

```bash
inkscape --file=image.svg --export-area-drawing --without-gui --export-pdf=image.pdf
```
