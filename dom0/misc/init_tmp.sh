#!/usr/bin/sh
mount /dev/sda3 /mnt/
mount -t tmpfs -o size=10G tmpfs /var/tmp/portage