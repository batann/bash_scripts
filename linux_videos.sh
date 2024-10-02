#!/bin/bash
# Get the total height of the screen
total_height=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f 2)

# Calculate 20% of the total height
desired_height=$((total_height * 20 / 100))

# Launch a terminal window with the desired height
 clear && while :;do clear && mpv $(find /media/batan/100/11/linux/VIDEO -maxdepth 2 -type f|fzf);done

