### Fix Alt + F4 switching to TTY

Recently, the combination of `Alt + F4` started to switch to TTY4 insetad of just closing the current window. Looking for a solution, I found [this thread](https://askubuntu.com/questions/886593/alt-f4-switches-to-tty4/929115#929115) were the proposed solution was using `kbd_mode` as follows:

```bash
sudo kbd_mode -s`
```

And it started working as usual again.
