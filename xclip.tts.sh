#!/bin/bash
#
abc=$(date +%H.%M)
xclip -o >> temp.txt
/home/batan/.local/bin/edge-tts -f temp.txt --write-media output.$abc.wav
/usr/bin/mpv output.$abc.wav

