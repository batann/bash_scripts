#!/bin/bash
xfce4-terminal --geometry='240x75-0-0' --zoom=-1 --color-bg='Black' -e "tmux new-session \;
 splitw -v -p60 \;
 splitw -h -p 72  \;
 splitw -h -p85 \;
 splitw -v -p20 \;
 splitw -h -p60 \;
 selectp -t0 \;
 splitw -h -p72 \;
 splitw -v -p35  \;
 selectp -t1 \;
 splitw -h -p23  \;
 splitp -t3 -v \;
"
