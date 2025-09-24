# Test HDD read and write speed

I wanted to test the read and write speed of an external HDD using different wires. I discovered the [`hdparm` command](https://www.iespai.com/2023/09/06/el-comando-hdparm/) and its option to test read speed:

```bash
hdparm -tT /dev/sda
```

As for the write speed, I used the known `dd` command as follows (test writing 4GB):

```bash
dd if=/dev/zero of=/media/<user>/<external_hdd>/test bs=1M count=4096 conv=fdatasync
```
