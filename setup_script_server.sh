#!/bin/bash
clear
echo -e "${White}\033[41mStarting Script Server...\033[0m"
source script_server/bin/activate
cd script_server
python launcher.py
