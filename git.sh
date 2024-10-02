#!/bin/bash
clear
echo -e "'033m[30''\033[45m'Enter Repository to clone'\033[0m'"
read -p '   >>>   ' abc
clear
bcd=$(ddgr --np -x -w github.com -n1 $abc|sed -n '2p'|cut -c 8-160|sed 's/$/.git/g')
echo -e "'\033[45m'Clone the following directory:'033[0m'"
echo -e "$bcd"
echo -e "Press [ANY] to Clone or [CTRL-C] to abort'\033[0m'"
git clone "$bcd"
clear
echo -e "DONE"

