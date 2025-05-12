#!/bin/bash

# mount disk using fstab

echo ":: Fetching disks"
DISK=gum choose --no-limit --header "Found disks" $(lsblk -o NAME,SIZE,TYPE,MOUNTPOINT | grep disk | awk '{print $1}')

for i in $DISK; do
    if gum confirm "Proceed to mount disk $(gum style --foreground 212 $i)?"; then
        echo ":: Mounting disk $(gum style --foreground 212 $i)"
        echo "UUID=XXXXXX-XXXX-XXXX /mnt/data btrfs defaults 0 2" | sudo tee -a /etc/fstab
    else
        echo ":: Skipping disk $i mount"
    fi
done

sudo mount -a
echo ":: Disk configuration complete"
