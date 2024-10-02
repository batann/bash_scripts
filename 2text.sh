#!/bin/bash
exclude_dirs=(
  "$HOME/.var"
  "$HOME/.cache"
  "$HOME/.config"
  "$HOME/.local"
  # Add more directories to exclude as needed
)
# Step 1: Find last accessed files, sort by modification date, and limit to the last 1000 entries
file_list=$(find $HOME -type f -printf "%T@ %p\n" | sort -n | tail -n 1000 | awk '{print $2}')

# Step 2: Extract directories from the list of files
dir_list=$(dirname $file_list | sort | uniq)

# Step 3: Limit to top 20 directories
top_dirs=$(echo "$dir_list" | tail -n 20)

# Step 4: Display directories using fzf for selection
selected_dir=$(echo "$top_dirs" | fzf --height 40% --reverse --prompt="Select a directory: ")

# Step 5: Check if a directory was selected
if [ -n "$selected_dir" ]; then
  # Extract the base name of the selected directory for naming the tmux session
  session_name=$(basename "$selected_dir")

  # Open a new kitty terminal with tmux in the selected directory
  kitty -- bash -c "cd '$selected_dir' && tmux new-session -s '$session_name'"
fi

