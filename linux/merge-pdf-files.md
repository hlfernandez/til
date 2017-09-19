# Merge PDF files

I usually want to merge several PDF files into one. Looking for a command to do this, I found three solutions. The simplest way is to use `pdfunite` as follows:

```bash
pdfunite file1.pdf file2.pdf file3.pdf merged.pdf 
```

However, it seems that this command breaks hyperlinks and produces big files. 

The next way, which is also easy to remember, is to use `pdftk`:

```bash
pdftk file1.pdf file2.pdf file3.pdf cat output merged.pdf 
```

`pdftk` preserves hyperlinks and works fine.

Finally, `ghotstscript` can also be used (with a parameter to improve result quality) for this task as follows:

```bash
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=merged.pdf file1.pdf file2.pdf file3.pdf
```