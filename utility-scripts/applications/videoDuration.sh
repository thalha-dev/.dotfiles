#!/bin/bash

total_duration=0

if [[ -d "$1" ]]; then
	dir_path=$1

	for file in "$dir_path"/*.{avi,mp4,wmv,dat,3gp,ogv,mkv,mpg,vob,flv}; do
		if [ -f "$file" ]; then
			duration=$(mediainfo --Inform="Video;%Duration%" "$file")
			total_duration=$(echo "$total_duration + $duration/1000" | bc)
		fi
	done

	total_hours=$((total_duration / 3600))
	total_minutes=$(((total_duration - total_hours * 3600) / 60))

	notify-send -t 60000 "Total duration: ${total_hours} hours ${total_minutes} minutes" -u normal
	echo "Total duration: $total_hours hours $total_minutes minutes"
else
	for file in "$@"; do
		extension="${file##*.}"
		if [[ $extension == "mp4" ||
			$extension == "mkv" ||
			$extension == "avi" ||
			$extension == "mpg" ||
			$extension == "vob" ||
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

	total_hours=$((total_duration / 3600))
	total_minutes=$(((total_duration - total_hours * 3600) / 60))

	notify-send -t 60000 "Total duration: ${total_hours} hours ${total_minutes} minutes" -u normal
	echo "Total duration: $total_hours hours $total_minutes minutes"
fi
