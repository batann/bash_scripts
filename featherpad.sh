#!/bin/bash
clear
abc=$(yad --undecorated --no-buttons --text="File:" --image="/home/batan/100/icons/icon-dd.48.png" --entry) \
sleep 5
bcd=$(yad --undecorated --no-buttons --text="$(echo $cde|sed 's/ /\n/g')" --image="/home/batan/100/icons/icon-dd.48.png" --entry) \

featherpad $bcd
