### Resize a gif image

I wanted to resize a gif image but directly using the `convert` command from ImageMagick didn't work propertly. After a quick search, I found out the following solution:

```bash
convert image.gif -coalesce temporary.gif
convert -size <original size> temporary.gif -resize 24x24 smaller.gif

```
