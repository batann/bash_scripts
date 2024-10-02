#!/bin/bash
#export SESSION_MANAGER=$(dbus-launch)
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus

xfce4-terminal --geometry=100x3-0-0 --color-bg=black --color-text=Purple --hide-menubar --hide-borders --hide-scrollbar -e "while :; do clear
 echo -e '${Black}\033[47mEnter bookmark [URL] and [tag]   :\033[0m${Purple}'
 read -p '     >>>   ' abc
 read -p '     >>>   ' bcd
 buku -a $abc +$bcd ;done"

