# Fix menu bar hidden behind canvas problem

On Java-Swing, a menu bar (`JMenuBar`) is showed behind other components (specifically a canvas).

[It seems to be](http://forum.worldwindcentral.com/showthread.php?11051-Menu-Bar-is-hidden-behind-Canvas) a heavyweight (canvas) versus lightweight (swing) issue. The heavyweight will always render over the lightweight. By calling the following two static methods the problem gets fixed.

```java
JPopupMenu.setDefaultLightWeightPopupEnabled(false);
ToolTipManager.sharedInstance().setLightWeightPopupEnabled(false);
```
