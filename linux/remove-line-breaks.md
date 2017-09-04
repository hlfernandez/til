### Remove line breaks

Finding a way to remove all new line breaks from a text file, I finally reached the following [solution](https://stackoverflow.com/questions/1251999/how-can-i-replace-a-newline-n-using-sed) using `tr`:

```bash
tr -d '\n' < input.txt > output.txt
```