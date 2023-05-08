#!/bin/bash

total_duration=0

# Loop through all selected files and calculate their durations
for file in "$@"; do
	extension="${file##*.}"
	if [[ $extension == "mp4" ||
		$extension == "mkv" ||
		$extension == "avi" ||
		$extension == "dat" ||
		$extension == "flv" ||
		$extension == "wmv" ||
		$extension == "3gp" ||
		$extension == "ogv" ]]; then
		if [ -f "$file" ]; then
			duration=$(mediainfo --Inform="Video;%Duration%" "$file")
			total_duration=$(echo "$total_duration + $duration/1000" | bc)
		fi
	fi
done

# Convert total duration to hours and minutes
total_hours=$((total_duration / 3600))
total_minutes=$(((total_duration - total_hours * 3600) / 60))

echo "Total duration: $total_hours hours $total_minutes minutes"
