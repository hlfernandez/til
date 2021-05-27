# Append the content of one file into another one

I want to append the contents of one file at the beginning of another file. I [found](https://stackoverflow.com/a/54715861/1821422) that it can be easily done with subshell:

```bash
echo "$(cat source.file; cat target.file)" > target.file
```

Which appends the contents of `source.file` at the beginning of `target.file`.

To perform this operation in batch (e.g. append a license header into a set of files), I created a script `append.sh` with:

```bash
#!/bin/bash

# append.sh target.file source.file

echo "$(cat $2; cat $1)" > $1
```

And then apply it in combination with `find`:

```bash
find ./ -name "pattern" -exec ./append.sh {} /path/to/header \;
```
