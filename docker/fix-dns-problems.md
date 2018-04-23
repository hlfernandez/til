# Fix DNS problems

One day we noticed that we could not build Docker images at work: commands involving `apt-get` were failing because addresses could not be resolved. After a troubleshooting session we find out the problem: the image was using Google DNS servers which were forbiden by the company firewall.

So, the solution involved changing the DNS inside the image and I found [this nice post](https://development.robinwinslow.uk/2016/06/23/fix-docker-networking-dns/) explaining some possibilities.

To fix the problem we changed the DNS settings of the Docker daemon. It is possible to set the default options for the docker daemon by creating a daemon configuration file at `/etc/docker/daemon.json`. This file should look like:

```bash
{
    "dns": ["10.0.0.2", "8.8.8.8"]
}
```

And then, after restarting the docker daemon with `sudo service docker restart`, we could start building our docker images.

Thanks to this problem I also learned that it is possible to run a docker container with a specific DNS server by passing the `--dns` flag to the run command.