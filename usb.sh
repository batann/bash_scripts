#!/bin/bash
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
Yellow='\033[1;33m'
White='\033[1;37m'
clear
read -p "Please Enter Partition Label   >>>   " bcd
clear
echo -e '${Black}\033[47mTo format usb please select from the following disks\033[0m'
options=$(sudo fdisk -l|grep 'dev/sd'|grep -v sda |grep -v sdb|grep -v Disk|cut -c 1-8);
select disk in ${options[@]};
do
clear
sudo mkfs.vfat -v -I -n $bcd ${disk}1>>/dev/null ;
break
done
clear
echo -e "${White}\033[41mUSB $disk has been formated\033[0m"
read -n1 -p '   >>>   Enter [Any] to exit' lol











