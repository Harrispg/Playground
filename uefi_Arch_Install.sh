#!/bin/bash
#
MYTMZ="$(curl -s https://ipapi.co/timezone)"
loadkeys de_CH-latin1

timedatectl set-ntp true
timedatectl status

welcome () {
  clear
  echo "==================================================="
  echo "=                                                 ="
  echo "=     Welcome to the EZArch Installer Script      ="
  echo "=                                                 ="
  echo "=     UEFI Edition                                ="
  echo "=     Version 0.1  (Release)                      ="
  echo "=                                                 ="
  echo "=     Brought to you by harrispg                  ="
  echo "=                                                 ="
  echo "=     Timezone : "{MYTMZ}"                        ="
  echo "==================================================="
  echo "=     Disks :                                     ="
  lsblk | grep disk
  echo "=     Boot Disk :                                 ="
  lsblk | grep disk | grep '  1  '
  echo -e "=================================================== \n"
  sleep 4
}

welcome







