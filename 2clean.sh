#!/bin/bash


# Function to display the progress bar
display_progress() {
    local total_files="$1"
    local current_file="$2"
    local percentage=$((current_file * 50 / total_files))
    local bar_length=50
    local completed_length=$((bar_length * percentage / 100))
    local remaining_length=$((bar_length - completed_length))
    local progress_bar="[$(printf "%-${completed_length}s" "=")$(printf "%-${remaining_length}s" " ")]"

    clear
    echo -e "Cleaning up .cache/thumbnails/*.png files:"
    echo -e "Progress: $progress_bar $percentage% ($current_file/$total_files)"
}

# Count the total number of .png files
total_files=$(find "$HOME/.cache/thumbnails/" -type f -name "*.png" | wc -l)
current_file=0

# Clean up .cache/thumbnails/*.png files
for file in "$HOME/.cache/thumbnails/"*.png; do
    trash "$file"
	sleep 0.1
    ((current_file++))
    display_progress "$total_files" "$current_file"
done

clear
echo "Cleanup complete!"
read -n1 -p "Enter [ANY] to Exit" jjj

