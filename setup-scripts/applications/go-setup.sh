#!/bin/bash

mkdir -p ~/source-installed
cd ~/source-installed || exit

curl -JOL https://go.dev/dl/go1.20.6.linux-amd64.tar.gz

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz
