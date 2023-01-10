# Make SSH private keys permanent

I recently generated a new key for a remote server so that I can connect via SSH without typing the password every time. For this to work, it is neccessary to add the key with `ssh-add` in every terminal that is opened. 

I discovered [here](https://stackoverflow.com/a/4246809/1821422) that this can be avoided by adding the following to the `~/.ssh/config` file:

```bash
"IdentityFile /home/user/.ssh/remoteServer"
```

Also, this way I am able to run scripts from cron jobs that require the SSH key to be added (e.g. for doing `rsync` backups overnight).
