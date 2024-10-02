#!/bin/env bash

TMP_SCRIPT=$(mktemp /tmp/countdown_script.XXXXXX)
cat << 'EOL' > "$TMP_SCRIPT"
#!/usr/bin/env bash
BBlue='\e[0;104m'
BBlack='\e[0;100m'
RRed='\e[0;100m'
GGreen='\e[0;100m'
YYellow='\e[0;100m'
BBlue='\e[0;100m'
PPurple='\e[0;100m'
CCyan='\e[0;100m'
WWhite='\e[0;100m'
NC='\033[0m'

tput civis
abc='>' && for i in $(seq 1 100);do clear && tput cup 0 101 && echo -e $i'%' && tput cup 0 0 && echo -e ${White}$abc${NC} && sleep 0.1 && abc=$abc'>';done


EOL
xfce4-terminal --geometry=110x2+300+900 --hide-menubar --hide-scrollbar --hide-borders --color-text=purple --color-bg=cyan -e "sudo -u batan bash $TMP_SCRIPT"
