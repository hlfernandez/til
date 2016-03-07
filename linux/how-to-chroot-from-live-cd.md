### How to chroot from a LiveCD

This nice [wiki](https://wiki.sabayon.org/index.php?title=HOWTO:_chroot_from_a_LiveCD) explains how to chroot from a LiveCD, which I summarize here.

1. Boot a Linux LiveCD/DVD/USB (for the same architecture than the installed on the hard disk).

2. Open a terminal and mount the root partition of the installed system (and, if you have */boot* on a separate partition, mount that too). Example: suppose `/dev/hda1` is the `/boot` partition and `/dev/hda3` is the *root* partition (if your partition names are of the form `/dev/sd<letter><number>` rather than `/dev/hd<letter><number>` then use that form instead; if you do not have `/boot` on a separate partition to `/` (*root*) then you should omit the mount and umount commands referring to `/boot`). Partitions will be mounted into a directory called `chroot` in the `/mnt` directory.
```bash
mkdir -p /mnt/chroot/boot
mount /dev/hda3 /mnt/chroot
mount /dev/hda1 /mnt/chroot/boot
mount -t proc none /mnt/chroot/proc
mount -o bind /dev /mnt/chroot/dev
mount -o bind /run /mnt/chroot/run 
```

3. Enter the installed system:
```bash
chroot /mnt/chroot /bin/bash
env-update
source /etc/profile
export PS1="(chroot) $PS1"
```

4. From now on, you can enter commands as if you were using your installed system directly.
```bash
<enter any command you want> # (chroot)
```

5. Once you have finished, exit from the chroot environment (by typing `exit`) and unmount the drives:
```bash
umount /mnt/chroot/boot /mnt/chroot/dev /mnt/chroot/proc /mnt/chroot
```
