#!/bin/bash
log="postinstall.log"
comm="postinstall.commands"
tout civis
while :;
do
clear
tput cup 5 0
echo -e "\033[34m===============================================================\033[0m"
tput cup 6 0
echo -e "\033[31mCommand to be executed:   \033[37m>>>\033[0m   "
tput cup 6 30
echo -e "$input"
tput cup 10 30
echo -e "\033[35m$input\033[0m"
tput cup 10 0
read -n1 -p "command to execute   >>>    "  abc
if [[ $abc == '^C' ]]; then
	break
fi
#	bcd="\$abc"
#	input="$input$bcd"
#fi

input="$input$abc";
done
echo $input


