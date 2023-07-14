#!/bin/bash

# __  ____  __  ___  _   _    _    ____
# \ \/ /  \/  |/ _ \| \ | |  / \  |  _ \
#  \  /| |\/| | | | |  \| | / _ \ | | | |
#  /  \| |  | | |_| | |\  |/ ___ \| |_| |
# /_/\_\_|  |_|\___/|_| \_/_/   \_\____/
#
echo "=============================================="
echo "                  XMONAD                      "
echo "=============================================="

echo "Dependecies for xmonad"
echo ""
sudo apt-get install -y git
sudo apt-get install -y libx11-dev
sudo apt-get install -y libxft-dev
sudo apt-get install -y libxinerama-dev
sudo apt-get install -y libxrandr-dev
sudo apt-get install -y libxss-dev
sudo apt-get install -y xterm
sudo apt-get install -y dmenu

echo "Installing XMONAD"
echo ""
sudo apt-get install -y xmonad
sudo apt-get install -y libghc-xmonad-contrib-dev
