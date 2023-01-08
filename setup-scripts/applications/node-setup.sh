#!/bin/bash

cd ~/source-installed
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

mkdir -p ~/.npm-global

# echo 'NPM_CONFIG_PREFIX=~/.npm-global' >> ~/.profile
