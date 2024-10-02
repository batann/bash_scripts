#!/bin/bash
tput civis
clear
echo -e "Please name for iso:"
echo -e "--------------------"
read -p '   >>>   ' so
iso=($so$(date +%j).iso)
clear
echo -e "Create a snapshot of the system while preserving the account?"
echo -e "   >>>   1)   YES"
echo -e "   >>>   2)   NO"
echo "--------------------------------------------------------------------"
read -p '              >>>   ' abc
if [[ $abc -eq 1 ]]; then
sudo mx-snapshot --cli -z lz4 -l -Xhc -f $iso -x Desktop/ -x Documents/ -x Downloads/ -x Music/ -x Pictures/ -x Public/ -x Templates/ -x Videos/
else
	sudo mx-snapshot --cli -r -z lz4 -l -Xhc -f $iso -x Desktop/ -x Documents/ -x Downloads/ -x Music/ -x Pictures/ -x Public/ -x Templates/ -x Videos/
fi
clear
echo "DONE"
read -n1 -p 'Enter [ANY] to Exit'



