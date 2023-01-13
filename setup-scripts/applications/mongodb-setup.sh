#!/bin/bash

sudo apt-get install -y gnupg
sudo apt-get install -y gnupg2
sudo apt-get install -y apt-transport-https

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

cd ~/source-installed

wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb

sudo dpkg -i ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb

sudo apt update

sudo apt install -y mongodb-org


read -p "Do you want to install MongoDB Compass? [y/Y] : " option


if [[ $option == "y" || $option == "Y" ]]; then
    
    wget https://downloads.mongodb.com/compass/mongodb-compass_1.35.0_amd64.deb

    sudo apt-get install -y gconf-service gconf-service-backend gconf2-common libgconf-2-4

    sudo dpkg -i ./mongodb-compass_1.35.0_amd64.deb
fi
