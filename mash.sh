#!/bin/bash
cd /home/batan/mashpodder/podcasts/
	clear
echo -e "\033[47mPlease select a Show:\033[0m"
options=$(ls -d */)
select dir in ${options[@]}; do
clear
echo -e "\033[47m$dir:\033[0m"
done
options=$(ls $dir)
select episode in ${options[@]};do
	/usr/bin/paplay $dir/$episode
done
