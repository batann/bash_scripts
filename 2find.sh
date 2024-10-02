#!/bin/bash

clear
tput civis

abc=$(yad --form --width="400" --image="/home/batan/100/icons/icon-s3-96.png" --field="depth":CB "1! 2! 3! 4! 5! 10! 11! 12! 13!" --field="type":CB "f! d" --field="name":TXT)

aa1=$(echo $abc|sed 's/|/ /g'|awk '{print $1}')
aa2=$(echo $abc|sed 's/|/ /g'|awk '{print $2}')
aa3=$(echo $abc|sed 's/|/ /g'|awk '{print $3}')
bcd=$(find . -maxdepth $aa1 -type $aa2 -name '*$aa3*')
echo $bcd|sed "s/^/'/g"|sed "s/$/'/g"|fzf


