### Remove the password from a PDF

I wanted to reduce the remove the password from a PDF and I discovered that it can be done with ``pdfk`` easily:

```bash
pdftk input.pdf input_pw <pdf_password> output out.pdf
```
