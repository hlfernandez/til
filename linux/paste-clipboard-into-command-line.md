### Paste the clipboard contents into the command line

I found that pasting the clipboard contents into the command line can be done easily with `xclip`:

```bash
xclip -out -selection clipboard > clipboard.txt

CLIPBOARD=$(xclip -out -selection clipboard)
```
