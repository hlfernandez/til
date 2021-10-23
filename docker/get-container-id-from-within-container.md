# Get container ID from within Docker container

I was curious about how to get the container ID from within the own Docker container, and I found [this way](https://gist.github.com/nmarley/0ee3e2cf14dabfb868eb818b8b30e7e0):

```bash
awk -F/ '{ print $NF }' /proc/1/cpuset
```

