### Find all files containing a string

A simple and powerful way to find a specific string in a filesystem:

```bash
grep -rnw '/path/to/somewhere/' -e "pattern"
```
Where:
- `-r` or `-R` is recursive.
- `-n` is line number.
- `-w` stands match the whole word.
- `-l` (lower-case L) can be added to just give the file name of matching files.
    
Along with these, `--exclude`, `--include`, `--exclude-dir` and `--include-dir` parameters could be used for efficient searching. 

For example, I use to run the following command to look for java files with `TODO`s:

```bash
grep -rnw --include=*.java  './' -e 'TODO:'
```