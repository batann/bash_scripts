#!/bin/bash
xfce4-terminal --geometry='240x75-0-0' --zoom=-1 --color-bg='black' -e "tmux new-session 'ranger' \;
splitw -v -p90 \;
selectp -t1 \;
splitw -h -p30 \;
selectp -t2 -P 'bg=Cyan' \;
selectp -t3  \;
splitw -h -p30 \;
splitw -v -p20 \;
selectp -t3 \;
splitw -v \;
splitw -h \;
"
