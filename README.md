# NAS with USB automount media

I needed this for my PS2 Slim, so I can connect it to a HDD, through a raspberry pi and network cable. That way speeds are better than with USB 1.1, and FMVs don't freeze.

# Requirements:

* systemd + udev
* pmount
* exfat-fuse + ntfs-3g 
* docker-engine

# Run once:

```sudo ./setup.sh```

In order to show the USB devices, you would need to reboot.
