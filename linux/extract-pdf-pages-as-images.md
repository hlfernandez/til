# Extract PDF pages as images

I want to extract each page of a PDF as an individual image file with high quality. After an in-depth search, I find out the following solution:

```bash
convert -alpha remove -geometry 3600x3600 -density 300x300 -quality 100 "document.pdf" "document-pages.png"
```
