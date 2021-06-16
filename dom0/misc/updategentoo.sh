#!/bin/bash
mount /dev/nvme1n1p6 /media/
TPMPATH=/media/gencoo
ROOTIMG=$TPMPATH/root.img
OFFSET=$((415744*512))
LOOP=$(/sbin/losetup -f --show -o $OFFSET $ROOTIMG)
mount $LOOP /mnt/
losetup /dev/loop1 $TPMPATH/private.img
mount --types proc /proc /mnt/proc
mount --rbind /sys /mnt/sys
mount --make-rslave /mnt/sys
mount --rbind /dev /mnt/dev
mount --make-rslave /mnt/dev
chroot /mnt/ /bin/bash
#losetup -D
