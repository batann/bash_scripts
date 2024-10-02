#!/bin/bash

# Function to read HH:MM format input
read_time() {
    local time=""
    local input=""
    local count=0

    # Loop until we have collected 4 characters (HHMM)
    while [ ${#time} -lt 4 ]; do
        # Read one character without waiting for Enter
        read -n 1 input

        # If the input is a digit and we haven't reached the end, append it to time
        if [[ $input =~ [0-9] && ${#time} -lt 4 ]]; then
            time="${time}${input}"
            ((count++))
            # If we have collected 2 characters (HH), append ":"
            if [ ${#time} -eq 2 ]; then
                time="${time}:"
            fi
            # Print the current input
            printf "%s" "$input"
        fi
    done
    echo "$time"
}

# Prompt the user to enter time in HH:MM format
echo -n "Enter time (HH:MM): "
time=$(read_time)
echo ""
echo "Time entered: $time"
