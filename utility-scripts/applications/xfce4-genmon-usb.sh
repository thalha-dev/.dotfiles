#!/bin/bash

# An example script for the genmon plugin to mount/umount USB disk

# Change sdb1 to your USB disk device 

ls -l /dev/sdb1 >/dev/null 2>&1
if [ $? == 0 ]
then
  grep "/dev/sdb1" /etc/mtab >/dev/null 2>&1
  if [ $? == 0 ]
  then
    echo "<img>/usr/local/share/icons/Tango/16x16/actions/gtk-delete.png</img>"
    echo "<click>umount /dev/sdb1</click>"
    echo "<tool>Click to unmount the USB disk</tool>"
  else
    echo "<img>/usr/local/share/icons/Tango/16x16/devices/gnome-dev-harddisk-usb.png</img>"
    echo "<click>mount /dev/sdb1</click>"
    echo "<tool>Click to mount the USB disk</tool>"
  fi
else
  echo "<img>/usr/local/share/icons/Tango/16x16/actions/add.png</img>"
  echo "<tool>No USB disk detected</tool>"
fi
