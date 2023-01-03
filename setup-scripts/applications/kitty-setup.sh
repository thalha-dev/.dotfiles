#!/bin/bash

#  _  _____ _____ _______   __
# | |/ /_ _|_   _|_   _\ \ / /
# | ' / | |  | |   | |  \ V /
# | . \ | |  | |   | |   | |
# |_|\_\___| |_|   |_|   |_|
#
#
echo ""
echo "KITTY SETUP..."

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
