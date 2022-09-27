### Convert Excel into CSV

I wanted to convert some Excel files (`*.xlsx`) into CSV. After a quick search, I found out [this solution](https://stackoverflow.com/a/14856320/1821422) using Libre Office:

```bash
libreoffice --headless --convert-to csv $filename --outdir $outdir
```

It also works for Libre Office files in ODS format :-)

In the same thread there is also a mention to [`xlsx2csv`](https://github.com/dilshod/xlsx2csv), a Python tool that can handle large files.
