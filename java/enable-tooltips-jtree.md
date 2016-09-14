# Enable tooltips on JTree

On Java-Swing, in order to enable tooltips in a `JTree` it is neccessary to register it with the `ToolTipManager`:

```java
javax.swing.ToolTipManager.sharedInstance().registerComponent(aJTree);
```

Then, tooltips must be simply set by a cell renderer.
