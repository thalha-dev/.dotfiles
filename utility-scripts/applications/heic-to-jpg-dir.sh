#!/bin/bash

# Check if 'heif-convert' is available
if ! command -v heif-convert &> /dev/null; then
  echo "Installing Dependencies"
  echo "(enter password if necessary)"
  # Check if the user can run sudo
  if sudo -l &> /dev/null; then
    sudo apt install -y libheif-examples
  else
    echo "Error: User does not have sudo privileges."
    exit 1
  fi
fi

# Create the output directory if it doesn't exist
mkdir -p jpg-output

# Convert all .heic files to .jpg
for file in *.heic; do
  filename="${file%.*}"
  output_file="jpg-output/${filename}.jpg"
  
  # Check if the file already exists in the output directory
  if [[ -e "$output_file" ]]; then
    echo "File $output_file already exists. Skipping conversion."
  else
    heif-convert "$file" "$output_file"
    echo "Converted $file to $output_file"
  fi
done
