### Extract substring with `sed`

Finding a way to extract a substring in Linux, I finally reached the following solution using `sed`:

```bash
echo "2018.01.24" | sed 's/.*\.\([0-9]*\)\..*/\1/g'
```
With prints `01`. The idea of this solution is to create a regular expression that captures the desired substring using a group and then replace the entire string by the group.
