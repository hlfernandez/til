# Append text to file using sed

I want to append text to a file using sed both at the beginning and end of the file. I found that it can be easily done with the following two commands:

```bash
sed -i "1ibeginning" file.txt
sed -i "$ a end" file.txt
```
