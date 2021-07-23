### Read from file or standard input

Finding a way to have a Bash script reading from file (if provided) or standard input (if no file provided), I finally reached the following [solution](https://stackoverflow.com/a/7045517/1821422):

```bash
while read line
do
  echo "$line"
done < "${1:-/dev/stdin}"
```
