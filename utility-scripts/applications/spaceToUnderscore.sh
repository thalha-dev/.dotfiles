#!/bin/bash

if [ -d "$1" ]; then
	path=$1

	cd "${path}" || exit

	for file in *; do
		newfile=$(echo "$file" | tr ' ' '_')
		if [ "$file" != "$newfile" ]; then
			mv "$file" "$newfile"
		fi
	done
else
	for file in "$@"; do
		newfile=$(echo "$file" | tr ' ' '_')
		if [ "$file" != "$newfile" ]; then
			mv "$file" "$newfile"
		fi
	done
fi
