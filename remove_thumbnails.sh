
#!/bin/bash

total_files=$(find /home/batan/.cache/thumbnails/* -maxdepth 5 -type f -name "*.png" | wc -l)

# Call the progress bar script with total files as argument
./progress_bar_script.sh $total_files

# Loop to remove files
for i in $(find /home/batan/.cache/thumbnails/* -maxdepth 5 -type f -name '*.png'); do
  shred -f -n1 -z $i
done

