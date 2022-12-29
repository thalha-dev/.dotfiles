#!/bin/bash


sudo apt-get install -y libicu-dev
sudo apt-get install -y libtinfo-dev
sudo apt-get install -y libgmp-dev
sudo apt-get install -y libc6-dev
sudo apt-get install -y libffi-dev
sudo apt-get install -y xz-utils
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libtinfo-dev

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# install the recommended GHC version
ghcup install ghc

# install cabal-install
ghcup install cabal

# install stack
ghcup install stack

# install haskell-language-server
ghcup install hls
