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

# Continue prompting for input until Enter is pressed without entering any other text
while true; do
    # Move the cursor to the beginning of the line and clear it
    echo -ne "\r\033[K"

    # Prompt for user input and store it in a temporary variable
    read -p "Enter text (press Enter only to finish): $user_input" -e input

    # Check if the user pressed Enter without entering any other text
    if [ -z "$input" ]; then
        break
    fi

    # Concatenate user input to the variable
    user_input="${user_input}${input} "
done

# Move to the next line before echoing the stored variable
echo ""

# Echo the stored variable
echo "User Input: $user_input"

