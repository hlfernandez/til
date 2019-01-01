### Print line ranges with `sed`

Finding a way to print line ranges in Linux, I finally reached the following solution using `sed`:

```bash
sed -n '3,10p;11q' file.txt
```

This command prints the range of lines between the third and the tenth (inclusive) and quits at the eleventh.

It is possible to print from a specific line until the end of the file with `$`:

```bash
sed -n '3,$p' file.txt
```

And it is also possible to specify several ranges:
```bash
sed -n '2,3p;6,7p;10,11p' file.txt
```