#!/bin/bash


# to load the kvm module manually
modprobe kvm

cpu_vendor=$(lscpu | grep "Vendor ID:" | awk '{print $3}')

if [ "$cpu_vendor" == "GenuineIntel" ]; then
  echo "Intel CPU detected."
  modprobe kvm_intel
elif [ "$cpu_vendor" == "AuthenticAMD" ]; then
  echo "AMD CPU detected."
  modprobe kvm_amd
else
  echo "Unknown CPU vendor: $cpu_vendor"
fi

lsmod | grep kvm || exit 1

# Set up KVM device user permissions
# To check ownership of /dev/kvm, run :
ls -al /dev/kvm

# Add your user to the kvm group in order to access the kvm device:
sudo usermod -aG kvm "$USER"

# to delete prev version
sudo rm -r "$HOME"/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

# to not polute the current dir
mkdir -p ~/Downloads/deb-downloads
cd ~/Downloads/deb-downloads || exit
sudo chown -R "$USER" ~/Downloads/deb-downloads 

# get the latest version
VERSION=$(curl -s https://raw.githubusercontent.com/docker/docs/main/content/desktop/release-notes.md | awk '/^## / {print $2}' | head -n1)

# download .deb package
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-"${VERSION}"-amd64.deb

# install it
sudo apt install ./docker-desktop-"${VERSION}"-amd64.deb
