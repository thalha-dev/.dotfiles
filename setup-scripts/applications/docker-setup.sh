#!/bin/bash

# ------------------------------------------------REMOVE EXISTING BINs and OBJECTS

# Remove docker images
docker rmi "$(docker images -a -q)"
# Remove all exited docker containers 
docker rm "$(docker ps -a -f status=exited -q)"
# Remove running docker containers by first stopping them and later removing them
docker stop "$(docker ps -a -q)"
docker rm "$(docker ps -a -q)"
# Remove all docker networks
docker network prune

# The command docker system prune -a is a powerful tool that removes:
# The docker system prune -a command cleans up unused Docker components, freeing space but also potentially resulting in data loss. Care should be taken before executing cleanup commands to ensure critical data is backed up.

# All stopped containers
# All networks not used by at least one container
# All volumes not used by at least one container
# All images without at least one container associated with them
# All build cache
docker system prune -a
# purge
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-ce-rootless-extras docker-compose-plugin
# All the docker files will be in the /var/lib/docker path so you have to remove the folder.
sudo rm -rf /var/lib/docker /etc/docker
sudo rm -rf /var/lib/containerd
# Delete the docker group that you have created in order to run the docker as non-root user or without sudo
sudo groupdel docker
# Delete the docker socket using the command below
sudo rm -rf /var/run/docker.sock
# In case you have docker-compose installed, delete that using the command below
sudo rm -rf /usr/local/bin/docker-compose
sudo rm -rf /etc/docker
sudo rm -rf ~/.docker
# cleaning
sudo apt-get autoremove

# ------------------------------------------------INSTALL

# dependencies
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl
sudo apt-get install -y gnupg
sudo apt-get install -y lsb-release
sudo mkdir -p /etc/apt/keyrings

# Add Docker's official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# installing
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-ce-cli
sudo apt-get install -y containerd.io
sudo apt-get install -y docker-buildx-plugin
# sudo apt-get install -y docker-compose-plugin # not updated
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p "$DOCKER_CONFIG"/cli-plugins
DOCKER_COMPOSE_VERSION=$(curl -s https://raw.githubusercontent.com/docker/docs/main/content/compose/release-notes.md | awk '/^## / {print $2}' | head -n1)
curl -SL https://github.com/docker/compose/releases/download/v"${DOCKER_COMPOSE_VERSION}"/docker-compose-linux-x86_64 -o "$DOCKER_CONFIG"/cli-plugins/docker-compose
chmod +x "$DOCKER_CONFIG"/cli-plugins/docker-compose

# Adding User to 'docker' group"
sudo groupadd docker
sudo usermod -aG docker "$USER"
