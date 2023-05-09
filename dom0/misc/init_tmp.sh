#!/usr/bin/sh
mount /dev/sda4/mnt/
mount -t tmpfs -o size=18G tmpfs /var/tmp/portage
