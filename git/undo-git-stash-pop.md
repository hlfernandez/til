# Undo `git stash pop`

I wanted to [undo a `git stash pop`](http://stackoverflow.com/questions/20038056/undo-git-stash-pop) because I ran it in a wrong branch and, moreover, I got a lot of conflicts. The stash docs states that "Applying the state can fail with conflicts; in this case, it is not removed from the stash list." so all I had to do was to reset to `HEAD`.

```bash
git reset --hard HEAD
```

By doing this, my branch was clean and without conflicts and the stash was preserved so that I could then apply it in the right branch. Note that if the stash contains untracked files, those files aren't affected by the reset so they must be manually removed before re-aplying the stash.