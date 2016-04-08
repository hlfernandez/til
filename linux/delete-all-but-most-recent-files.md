### Delete all but the most recent N files

Finding a way to delete all but the most recent `N` files in bash, I finally reached the following [solution](http://stackoverflow.com/questions/25785/delete-all-but-the-most-recent-x-files-in-bash):

```bash
n=2
path=/home
find $path -type f -print0 | xargs -0 ls -tr | head -n -$n | xargs rm -f
```
Where
- `find` is used to filter the files and include their absolute paths.
- `ls` list files in xargs so that oldest are first (`-t`: newest first, `-r` reverse).
- `head -n -$n` displays all but the `n` last lines, that is, the `n` newest files.
- `xargs rm` calls `rm` for each selected file, using `-f` to avoid failing if no file is passed.

Directories are included by removing `-type f` from the command.