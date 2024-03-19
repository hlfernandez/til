# Ignore warnings

I wanted to ignore all warnings produced inside a function and I found this simple way of doing it:

```python
import warnings

with warnings.catch_warnings():
    warnings.simplefilter("ignore")
```

This way, all warnings produced inside the `with` block will be ignored.