# Fix jzy3d screenshots

When working with [`jzy3d`](http://jzy3d.org/) library, the `screenshot(File file)` method is useful to save a chart as a png image.

However, it seems that the stored png images are somehow corrupted and, for example, they appear empty when inserted into PowerPoint (although they can be resized). Using `ImageIO` to rewrite the image fixes this problem:

```java
File imageFile = new File("chart.png");
chart.screenshot(imageFile);
ImageIO.write(ImageIO.read(imageFile), "png", imageFile);
```