### `rsync` permission denied

I was trying to execute an `rsync` against a remote host with the following command:

```bash
rsync -avh --delete --progress ${LOCAL_BACKUPS_DIR} admin@172.16.16.41:${REMOTE_DEST_DIR}
```

And it was constantly giving me the following error, despite the fact that both `ssh` and `scp` where working properly:

```
Permission denied, please try again.
rsync: connection unexpectedly closed (0 bytes received so far) [sender]
rsync error: error in rsync protocol data stream (code 12) at io.c(235) [sender=3.1.2]
```

After a long search, I found [here](https://superuser.com/a/1017772/1087275) that this error can be raised when `rsync` is in an unusual location on the remote server. To fix it, I just added `--rsync-path=/bin/rsync` to the above command and it started working.
