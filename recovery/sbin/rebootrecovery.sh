#!/sbin/sh
mount /boot
cp /sbin/moboot.recovery /boot/moboot.next
cp /sbin/moboot.recovery /sdcard/moboot.next
umount /boot