#!/bin/bash

while true; do
    # Ask the user for the name of the video file
    read -p "Enter the name of the video file: " video_file

    # Check if the file exists and is an MP4 file
    if [ -f "$video_file" ] && [ "${video_file##*.}" == "mp4" ]; then
        break
    else
        echo "Invalid file. Please enter a valid MP4 file."
    fi
done

# Ask the user for the start point
read -p "Enter the start point (in seconds): " start_point

# Ask the user for the end point
read -p "Enter the end point (in seconds): " end_point

# Create a carve of the video between the specified start and end points
output_file="carve_${start_point}_${end_point}.mp4"
ffmpeg -i "$video_file" -ss "$start_point" -to "$end_point" -c copy "$output_file"

# Check if the carve was successful
if [ $? -eq 0 ]; then
    echo "Carve created successfully. Output file: $output_file"
else
    echo "Error creating carve. Check your input values and try again."
fi
