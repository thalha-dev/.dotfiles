#!/bin/bash


#  _   _ _____ _____     _____ __  __
# | \ | | ____/ _ \ \   / /_ _|  \/  |
# |  \| |  _|| | | \ \ / / | || |\/| |
# | |\  | |__| |_| |\ V /  | || |  | |
# |_| \_|_____\___/  \_/  |___|_|  |_|
#
echo ""
echo "NEOVIM !!!"
echo ""
mkdir -p ~/source-installed
cd ~/source-installed
curl -JOL https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
