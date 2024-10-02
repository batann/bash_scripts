#!/bin/bash
#############################################################
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
Yellow='\033[1;33m'
White='\033[1;37m'
clear
echo -e "${White}\033[41mClone LC-Bin Files?\033[0m"
read -e -p '   >>> 1) Yes 2) No   ' -i '1' lol
if [[ $lol -eq 1 ]]; then
	git clone https://github.com/batann/bin.git
	for i in $(ls /home/batan/bin/ |grep -v 'READ');
	do sudo chmod +x /home/batan/bin/$i
		sudo cp /home/batan/bin/$i /usr/bin/$i
	done
else
	clear
	echo -e 'Exiting'
	exit 0
fi

