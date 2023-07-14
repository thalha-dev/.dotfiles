#!/bin/bash



#                          _
#   __ _  ___   ___   __ _| | ___
#  / _` |/ _ \ / _ \ / _` | |/ _ \
# | (_| | (_) | (_) | (_| | |  __/
#  \__, |\___/ \___/ \__, |_|\___|
#  |___/             |___/
#

mkdir -p ~/source-installed
cd ~/source-installed || exit
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd ~ || exit
