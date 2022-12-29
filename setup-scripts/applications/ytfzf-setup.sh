#!/bin/bash

# __   _______ _____ __________
# \ \ / /_   _|  ___|__  /  ___|
#  \ V /  | | | |_    / /| |_
#   | |   | | |  _|  / /_|  _|
#   |_|   |_| |_|   /____|_|
#
mkdir -p ~/source-installed
cd ~/source-installed
git clone https://github.com/pystardust/ytfzf
cd ytfzf
sudo make install doc
cd ~
