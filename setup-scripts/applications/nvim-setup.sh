#!/bin/bash

url="https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"
extract_dir="$HOME/source-installed/nvim/stable"
nvim_bin="$HOME/.local/bin/nvim"

# Remove existing files in the extract directory
if [[ -d "$extract_dir" ]]; then
	echo "Removing existing files in $extract_dir..."
	rm -rf "$extract_dir"
fi

# Remove symlink if it already exists
if [ -L "$nvim_bin" ]; then
	rm "$nvim_bin"
fi

mkdir -p "$extract_dir"

curl -L "$url" | tar -xz -C "$extract_dir" --strip-components=1

# Create symlink to nvim executable
ln -s "$extract_dir/bin/nvim" "$nvim_bin"
