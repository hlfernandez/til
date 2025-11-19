#### Updating Lenovo ThinkPad BIOS on Linux

I wanted to updatee the BIOS of my Lenovo ThinkPad X1 Carbon 13th / X1 2-in-1 10th using `fwupd` and followed these steps.

#### 1. Check current BIOS version
```bash
sudo dmidecode -t bios | grep Version
```

#### 2. Check if there are firmware updates available

```bash
fwupdmgr get-devices | grep -A6 "System Firmware"
fwupdmgr get-updates
```

* If a **"New version"** appears with the available capsule, it means there's a pending update.
* Note: if fwupd shows `Update State: Success` but the lid was closed, **the update was not actually applied**.

#### 3. Update BIOS correctly

**Requirements:**

* Laptop connected to charger
* Lid open
* No critical external disks connected (optional, but recommended by ChatGPT, which of course wrote this guide)

**Commands:**

```bash
sudo fwupdmgr refresh        # reload metadata
sudo fwupdmgr update         # install pending capsule
```

* fwupd will ask for confirmation to apply the update.
* The laptop will restart automatically and apply the BIOS update **before booting Linux**.
* Do not interrupt the process!

#### 4. Check version after update

```bash
sudo dmidecode -t bios | grep Version
fwupdmgr get-devices | grep -A6 "System Firmware"
```

* `dmidecode` will show the new real BIOS version (e.g., 1.39)
* `fwupdmgr` will show `Current version: 0.1.19` and `Update State: Success`.
