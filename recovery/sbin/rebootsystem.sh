#!/sbin/sh
mount /boot
cp /sbin/moboot.system /boot/moboot.next
umount /boot