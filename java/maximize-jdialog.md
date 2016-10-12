# Maximize a JDialog

On Java-Swing, a `JDialog` can be maximized by simply calling:

```java
dialog.setBounds(GraphicsEnvironment.getLocalGraphicsEnvironment().getMaximumWindowBounds());
```

Moreover, to make it having windows-like buttons:
```java
dialog.getRootPane().setWindowDecorationStyle(JRootPane.FRAME);
```
