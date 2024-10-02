#!/bin/bash
clear
echo -e "\033[41mDOT \033[0m"
find dot -maxdepth 1 -type f |sed 's!dot/!!g'
echo -e "\033[41mCHECK \033[0m"
find check -maxdepth 1 -type f |sed 's!check/!!g'
echo -e "\033[41mMENU \033[0m"
find ~/10/menu/ -maxdepth 1 -type f |sed 's!/home/batan/10/menu/!!g'
echo -e "\033[41mSCRIPTS \033[0m"
find ~/10/menu/scripts/ -maxdepth 1 -type f |sed 's!/home/batan/10/menu/scripts/!!g'
echo -e "\033[41m1/SH \033[0m"
find ~/1/SH/ -maxdepth 1 -type f |sed 's!/home/batan/1/SH/!!g'

