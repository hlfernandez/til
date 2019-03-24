# Ignore changes in file permissions (file mode)

Sometimes, we may be interested in ignoring changes in file permissions. This can be done by changing the value of `core.fileMode` described in the [git-config documentation](https://git-scm.com/docs/git-config#Documentation/git-config.txt-corefileMode). To change the local repository configuration, it is as simply as running:

```bash
git config core.filemode false
```

If can be also configured globally by running `git config --global core.filemode false`. If this does not seems to work, the local configuration may override the global configuration, so the local configuration should be removed to make the global configuration take effect: `git config --unset core.filemode`.
