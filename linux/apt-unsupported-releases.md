### Install or update software with apt in unsupported releases

When a given Ubuntu version is no longer supported, the `apt` comands will not run. Nevertheless, as [this post](https://askubuntu.com/a/91821) says, repositories for older releases that are no longer supported (like 19.04) get moved to an archive server (available at http://old-releases.ubuntu.com).

So, to continue using an outdated release we must edit the `/etc/apt/sources.list` file to change `archive.ubuntu.com` and `security.ubuntu.com` to `old-releases.ubuntu.com`. This can be easily done with `sed`:

```
sudo sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
```

This is going to be useful to maintain Dockerfiles writen for old versions of Ubuntu and guarantee that they can be built.
