# Download issuu presentation

I wanted to download an issuu presentation whose publisher chose not to allow downloads. I eventually came across a way of downloading every image which can be then merged into a PDF file, here is the script:

```bash
DOCUMENT_ID="<document_id>"
PAGE_COUNT=98
for i in {1..$PAGE_COUNT}; do wget http://image.issuu.com/$DOCUMENT_ID/jpg/page_${i}.jpg; done
for i in {1..$PAGE_COUNT}; do convert page_${i}.jpg page_${i}.pdf; done
INPUT=$(for i in {1..$PAGE_COUNT}; do echo "$(pwd)/page_${i}.pdf"; done)
pdftk ${INPUT} output $(pwd)/join.pdf
```

The `<document_id>` can be found by exploring the source code of the issuu presentation (e.g. using `CTRL + U`) and looking for an entry saying `"documentId":"<document_id>"`. This configuration contains also the `"pageCount":98` entry to know the number of pages to download.
