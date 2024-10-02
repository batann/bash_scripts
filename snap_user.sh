#!/bin/bash


#CREATE USER
abc=$(ls /home/snapshot/ba* |sed 's/.*\///g'|cut -c 1-3|sort -u|tail -n1)
bcd=$(echo $abc|cut -c3)
((bcd++))
def=$(echo $abc|cut -c 1-2)$bcd
user_name=$def

sudo useradd -m -r $user_name
sudo passwd $user_name Ba7an?12982

#CREATE SYSTEM SNAPSHOT

sudo mx-snapshot --cli -r -z lz4 -l -Xhc -d /home/ -f $user_name_$(date +%j).iso

#CREATE README

touch /home/snapshot/README.$user_name.md
echo -e "- date created	- $date" >> /home/snapshot/README.$user_name.md
echo -e "- user name		- $user_name" >> /home/snapshot/README.$user_name.md
echo -e "- snapshot		- $user_name_$(date +%j).iso" >> /home/snapshot/README.$user_name.md
echo -e "- scripts		- " >> /home/snapshot/README.$user_name.md
echo -e "- comment		- " >> /home/snapshot/README.$user_name.md
echo -e "- 10/10 batan 12982@tutanota.com - " >> /home/snapshot/README.$user_name.md
clear
echo -e "DONE"


