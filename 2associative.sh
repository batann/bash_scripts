#!/bin/bash
#   ANSI CODE   ##################################################################
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
Yellow='\033[1;33m'
White='\033[1;37m'
NC='\033[0m'
clear
#!/bin/bash

# Initialize a variable to store user input
user_input=""
heigh="1"
abc="3"
# Continue prompting for input until Enter is pressed without entering any other text
while true; do
    read -p "Enter text (press Enter only to finish): " input

	printf '\e[8;$abc;100t'
    # Check if the user pressed Enter without entering any other text
    if [ -z "$input" ]; then
        break
    fi

    # Concatenate user input to the variable
    user_input="${user_input}${input} | "
done

# Echo the stored variable
echo "User Input: $user_input"



