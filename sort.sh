#!/bin/bash

# Define source and destination directories
source_dir="/home/jpell/Downloads"
destination_dir="/home/jpell"

# Create destination directories if they don't exist
mkdir -p "$destination_dir/Documents"
mkdir -p "$destination_dir/Videos"
mkdir -p "$destination_dir/Music"
mkdir -p "$destination_dir/Scripts"
mkdir -p "$destination_dir/Python"

# Loop through files in the source directory
for file in "$source_dir"/*; do
  # Check if the file is a regular file
  if [ -f "$file" ]; then
    # Determine the file type
    file_extension="${file##*.}"
    
    # Move files to the appropriate destination
    case "$file_extension" in
      txt)
        mv "$file" "$destination_dir/Documents/"
        ;;
      mp4)
        mv "$file" "$destination_dir/Videos/"
        ;;
      mp3)
        mv "$file" "$destination_dir/Music/"
        ;;
      sh)
        mv "$file" "$destination_dir/Scripts/"
        ;;
      py|csv|ipynb)
        mv "$file" "$destination_dir/Python/"
        ;;
      *)
        mv "$file" "$destination_dir/Documents/"
        ;;
    esac
  fi
done
