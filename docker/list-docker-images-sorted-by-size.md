# List Docker images sorted by size

I wanted to list the Docker images sorted by size so that I can decide whether I remove the largest ones that I do not use frequently. To do so, one can use the `format` parameter which allows using a custom format and then pipe the output to `sort`. For instance:

```bash
docker images --format "{{.ID}}\t{{.Size}}\t{{.Repository}}:{{.Tag}}" | sort -k 2 -h
```

