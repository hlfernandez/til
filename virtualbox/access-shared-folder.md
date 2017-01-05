# Access to a shared folder in a Linux guest

When a shared folder is added to a Linux guest virtualized with VirtualBox, you need to access it as sudo. 

You can access it with regular guest users by simply adding them to the `vboxsf` group:
```bash
sudo gpasswd -a <username> vboxsf
sudo reboot
```
