#!/bin/bash

mkdir -p ~/source-installed
cd ~/source-installed

curl -JOL https://go.dev/dl/go1.19.4.linux-amd64.tar.gz

rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz
