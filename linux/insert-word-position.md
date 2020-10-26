### Insert a word in a specific position

I needed a way to insert a word in a specific position of another text variable and I found that it can be easily done with [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html). For example, the following code:

```bash
	TEXT="123456789"
	for i in $(seq 0 9); do echo "[$i] ${TEXT:0:i}-${TEXT:i}"; done
```

Produces this result:
```
[0] -123456789
[1] 1-23456789
[2] 12-3456789
[3] 123-456789
[4] 1234-56789
[5] 12345-6789
[6] 123456-789
[7] 1234567-89
[8] 12345678-9
[9] 123456789-
```
