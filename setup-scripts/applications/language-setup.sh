#!/bin/bash

./apt-dependencies.sh
echo ""
echo "C"
echo ""
./c-setup.sh
echo ""
echo "PYTHON"
./python-setup.sh
echo ""
./lua-setup.sh
echo ""
echo "NODE"
./node-setup.sh
echo ""
echo "RUST"
./rust-setup.sh
echo ""
echo "JAVA"
./java-setup.sh
echo ""
echo "GO"
./go-setup.sh
echo ""
echo "HASKELL"
./haskell-setup.sh

mkdir -p ~/Documents/temp
cp ~/.profile ~/Documents/temp/
cp ~/.config/fish/config.fish ~/Documents/temp/
cp ~/.bashrc ~/Documents/temp/
