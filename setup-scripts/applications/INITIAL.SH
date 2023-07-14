#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install -y xclip
sudo apt-get install -y wget
sudo apt-get install -y curl
sudo apt-get install -y stow
echo ""

echo "CREATING ESSENTIAL DIRECTORIES..."
./essential-dirs.sh

# for easy backlight control

sys="$(sudo dmidecode -s system-version)"

if [[ "${sys}" == "Lenovo E41-25" ]]; then
	sudo chmod 664 /sys/class/backlight/amdgpu_bl0/brightness
fi

sudo groupadd video
sudo usermod -aG video "$USER"

# make sudo last longer

cd $HOME || exit
git clone git@github.com:thalha-dev/.dotfiles.git
cd ~/.dotfiles || exit
sudo stow -v -t /etc/sudoers.d/ sudo/
sudo stow -v fonts/

xset r rate 240 50

echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.profile
echo 'export PATH=$PATH:$HOME/go/bin' >>~/.profile
echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' >>~/.profile
echo 'export PATH=$PATH:$JAVA_HOME/bin' >>~/.profile
echo 'export PATH=$PATH:$HOME/.cargo/bin' >>~/.profile
echo 'export PATH=$PATH:$HOME/.local/share/nvim/mason/bin ' >>~/.profile
echo 'export PATH=$PATH:$HOME/applications' >>~/.profile
