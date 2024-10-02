#!/bin/bash


abc=$(yad --form --field="depth":CB "1! 2! 3! 4! 5! 10! 11! 12! 13!" --field="type":CB "f! d" --field="name":TXT)

aa1=$(echo $abc|sed 's/|/ /g'|awk '{print $1}')
aa2=$(echo $abc|sed 's/|/ /g'|awk '{print $2}')
aa3=$(echo $abc|sed 's/|/ /g'|awk '{print $3}')

bcd="find . -maxdepth $aa1 -type $aa2 -name $aa3"
$bcd|fzf


