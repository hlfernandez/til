### Count the number of columns of a file

I was looking for a way to count the number of columns of a file and I found out that this can be easily done with `awk` (add `F` to specify a custom field separator):

```bash
awk 'NR==1{print NF}' data.tsv
```
