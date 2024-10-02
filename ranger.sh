# Get the total height of the screen
total_height=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f 2)

# Calculate 20% of the total height
desired_height=$((total_height * 20 / 100))

# Launch a terminal window with the desired height
 xfce4-terminal --zoom=-1 --geometry 80x${desired_height}-0-0 -e "ranger"

