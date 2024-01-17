#!/bin/bash

# to delete prev version
sudo rm -r "$HOME"/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop
