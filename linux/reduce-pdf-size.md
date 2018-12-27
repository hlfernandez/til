### Reduce the size of a PDF file

I wanted to reduce the size of a PDF file that was too large for an online form. After a quick search, I found out the following solution:

```bash
gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf
```

Where `setting` specifies the desired quality level, which can be:
- `/screen`: low quality.
- `/ebook`: intermediate quality.
- `/printer` and `/prepress`: high-quality.
