#!/bin/bash

cd ~/source-installed || exit
wget https://files2.freedownloadmanager.org/6/latest/freedownloadmanager.deb
sudo dpkg -i freedownloadmanager.deb
