### Create an animated gif

This command generates an animated gif from a set images:

```bash
convert -delay 100 -loop 0 *.png animation.gif
```

I usually name images with names such as `frame-0.png`, `frame-1.png`, and so on, so that they appear ordered in the animation.