#!/bin/bash

./programs/apt/apt-dependencies.sh
echo ""
echo "C"
echo ""
./languages/c-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "PYTHON"
./languages/python-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
./languages/lua-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "NODE"
./languages/node-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "RUST"
./languages/rust-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "JAVA"
./languages/java-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "GO"
./languages/go-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "HASKELL"
./languages/haskell-setup.sh

mkdir -p ~/Documents/temp
cp ~/.profile ~/Documents/temp/
cp ~/.config/fish/config.fish ~/Documents/temp/
cp ~/.bashrc ~/Documents/temp/
