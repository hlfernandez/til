### Replace tabs with spaces

Finding a way to replace tabs with spaces in bash, I finally reached the following [solution](https://stackoverflow.com/questions/11094383/how-can-i-convert-tabs-to-spaces-in-every-file-of-a-directory):

```bash
find . -name '*.java' ! -type d -exec bash -c 'expand -t 4 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
```
Where
- `find` is used to filter the files and process only those with `.java` extension.
- `expand` is used to replace each tab by the specified number (4 in the example) of spaces.
