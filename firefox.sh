#!/bin/bash
/usr/bin/firefox &&
/home/batan/.local/bin/browser-history |cut  -c 27-240|sed 's/,.*$//g'>> /home/batan/Documents/firefox.history.txt
