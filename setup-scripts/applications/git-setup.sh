#!/bin/bash/


sudo apt-get update
sudo apt-get install -y git 
echo ""
echo "CONFIGURING GIT"
echo ""
read -p "Enter git user name : " username
read -p "Enter git email id : " email
git config --global user.name "${username}"
git config --global user.email "${email}"
echo ""
git config --list
echo ""
