#!/usr/bin/env bash


mkdir -p ~/source-installed
cd ~/source-installed

git clone https://github.com/Mange/rofi-emoji.git

cd ./rofi-emoji

autoreconf -i

mkdir build

cd build/

../configure

make

sudo make install
