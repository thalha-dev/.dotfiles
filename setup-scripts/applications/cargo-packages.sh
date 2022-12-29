#!/bin/bash

cargo install macchina
cargo install typeracer
cargo install stylua
cargo install xremap --features x11   # X11


echo ""
echo "Dependecies for alacritty"
echo ""
sudo apt-get install -y cmake 
sudo apt-get install -y pkg-config 
sudo apt-get install -y libfreetype6-dev 
sudo apt-get install -y libfontconfig1-dev
sudo apt-get install -y libxcb-xfixes0-dev
sudo apt-get install -y libxkbcommon-dev
sudo apt-get install -y python3
cargo install alacritty
