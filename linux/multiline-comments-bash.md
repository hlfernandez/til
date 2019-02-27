### Multiline comments in bash

Sometimes I comment one or more lines (with `#`) in a bash script to temporarily ommit them and test another part (because it is failing, for instance). However, writting and deleting a lot of `#` is impractical, so I looked for the way of creating multiline comments in bash. In [this](https://stackoverflow.com/questions/43158140/way-to-create-multiline-comments-in-bash) Stack Overflow post there are several alternatives, among which I found [the following one](https://stackoverflow.com/a/46049228) the easiest and clearest solution:

```bash
#!/bin/bash
echo "Start script"

: <<'END_COMMENT'
echo "Do some things that are commented..."
END_COMMENT

echo "End script"
```
