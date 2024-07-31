# Concatenate files placing an empty line between them 

I recently wanted to concatenate files placing an empty line between them. I needed that due to the fact that the lines did not have a final newline and so `cat *` was merging into one line the last and first line of each pair of consecutive files.

```bash
sed -s '$G' *.txt
```
