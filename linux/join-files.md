# Join files

I wanted to join several text files to retain all lines that are present in all files. Using `join` would require a loop to join pairs of files and I come across this one-liner `awk` command:

```bash
function join_files() {
  files=($@)

  awk -v count="${#files[@]}" '{b[$0]++} END{for (line in b) if (b[line] == count) print line}' "${files[@]}"
}
```

Here is a test case for the function:

```bash
echo -e "1\n2\n3\na" > /tmp/f1.txt
echo -e "4\n1\n5\na" > /tmp/f2.txt
echo -e "6\n7\n1\na" > /tmp/f3.txt

join_files /tmp/f1.txt /tmp/f2.txt /tmp/f3.txt
```
