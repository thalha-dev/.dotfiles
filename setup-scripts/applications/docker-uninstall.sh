#!/bin/bash

# Remove docker images
docker rmi $(docker images -a -q)
# Remove all exited docker containers 
docker rm $(docker ps -a -f status=exited -q)
# Remove running docker containers by first stopping them and later removing them
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
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
