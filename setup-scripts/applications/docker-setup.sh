#!/bin/bash


sudo apt-get remove -y docker
sudo apt-get remove -y docker-engine
sudo apt-get remove -y docker.io
sudo apt-get remove -y containerd
sudo apt-get remove -y runc
sudo apt-get update
echo ""
echo "Dependencies"
echo ""
sleep 5
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl 
sudo apt-get install -y gnupg
sudo apt-get install -y lsb-release
echo ""
echo "Adding Official GPG key"
echo ""
sleep 5
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
echo ""
echo ""
echo "Installing Docker"
echo ""
sleep 5
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-ce-cli
sudo apt-get install -y containerd.io
sudo apt-get install -y docker-compose-plugin
echo ""
echo ""
echo "Adding User to 'docker' group"
echo ""
sudo groupadd docker
sudo usermod -aG docker $USER
