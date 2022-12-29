#!/bin/bash

./apt-dependencies.sh
echo ""
echo "C"
echo ""
./c-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "PYTHON"
./python-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
./lua-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "NODE"
./node-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "RUST"
./rust-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "JAVA"
./java-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "GO"
./go-setup.sh
echo ""
echo "want to stop right here ? then press CTRL-C"
sleep 15
echo "HASKELL"
./haskell-setup.sh

mkdir -p ~/Documents/temp
cp ~/.profile ~/Documents/temp/
cp ~/.config/fish/config.fish ~/Documents/temp/
cp ~/.bashrc ~/Documents/temp/
