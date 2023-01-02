#!/bin/bash


sudo apt-get install -y exa
sudo apt-get install -y mpv
sudo apt-get install -y feh
sudo apt-get install -y bat
sudo apt-get install -y ssh
sudo apt-get install -y fish
sudo apt-get install -y fzf
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y jq
sudo apt-get install -y rofi
sudo apt-get install -y rofi-dev
sudo apt-get install -y nala
sudo apt-get install -y sxiv
sudo apt-get install -y vifm
sudo apt-get install -y ncdu
sudo apt-get install -y acpi
sudo apt-get install -y scrot
sudo apt-get install -y chafa
sudo apt-get install -y copyq
sudo apt-get install -y xterm
sudo apt-get install -y picom
sudo apt-get install -y pamix
sudo apt-get install -y sxhkd
sudo apt-get install -y dmenu
sudo apt-get install -y bluez*
sudo apt-get install -y dunst
sudo apt-get install -y yt-dlp
sudo apt-get install -y cheese
sudo apt-get install -y lolcat
sudo apt-get install -y zoxide
sudo apt-get install -y i3lock
sudo apt-get install -y netctl
sudo apt-get install -y xmobar 
sudo apt-get install -y cowsay
sudo apt-get install -y wmctrl
sudo apt-get install -y ripgrep
sudo apt-get install -y zathura
sudo apt-get install -y xdotool
sudo apt-get install -y polybar
sudo apt-get install -y fd-find
sudo apt-get install -y cmatrix
sudo apt-get install -y blueman
sudo apt-get install -y neofetch
sudo apt-get install -y nitrogen
sudo apt-get install -y nm-applet
sudo apt-get install -y flameshot
sudo apt-get install -y screenkey
sudo apt-get install -y keynav
sudo apt-get install -y network-manager
sudo apt-get install -y trash-cli
sudo apt-get install -y xbacklight
sudo apt-get install -y go-mtpfs
sudo apt-get install -y brightnessctl
sudo apt-get install -y light
sudo apt-get install -y gnome-tweaks
sudo apt-get install -y android-file-transfer
echo ""

#  _  _____ _____ _______   __
# | |/ /_ _|_   _|_   _\ \ / /
# | ' / | |  | |   | |  \ V /
# | . \ | |  | |   | |   | |
# |_|\_\___| |_|   |_|   |_|
#
#
echo ""
echo "NEXT KITTY SETUP"
echo "want to stop right here ? then press CTRL-C"
sleep 15

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin


echo ""
echo "NEXT NEOVIM SETUP"
echo "want to stop right here ? then press CTRL-C"
sleep 15


#  _   _ _____ _____     _____ __  __
# | \ | | ____/ _ \ \   / /_ _|  \/  |
# |  \| |  _|| | | \ \ / / | || |\/| |
# | |\  | |__| |_| |\ V /  | || |  | |
# |_| \_|_____\___/  \_/  |___|_|  |_|
#
echo ""
echo "NEOVIM !!!"
echo ""
mkdir -p ~/source-installed
cd ~/source-installed
curl -JOL https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
cd ~

echo ""
echo "NEXT YTFZF SETUP"
echo "want to stop right here ? then press CTRL-C"
sleep 15

# __   _______ _____ __________
# \ \ / /_   _|  ___|__  /  ___|
#  \ V /  | | | |_    / /| |_
#   | |   | | |  _|  / /_|  _|
#   |_|   |_| |_|   /____|_|
#
mkdir -p ~/source-installed
cd ~/source-installed
git clone https://github.com/pystardust/ytfzf
cd ytfzf
sudo make install doc
cd ~
