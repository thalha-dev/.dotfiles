#!/bin/bash


sudo apt-get install -y exa
sudo apt-get install -y mpv
sudo apt-get install -y feh
sudo apt-get install -y bat
sudo apt-get install -y ssh
sudo apt-get install -y fish
sudo apt-get install -y fzf
sudo apt-get install -y tmux
sudo apt-get install -y jq
sudo apt-get install -y rofi
sudo apt-get install -y rofi-dev
sudo apt-get install -y nala
sudo apt-get install -y sxiv
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
sudo apt-get install -y lxappearance
sudo apt-get install -y neofetch
sudo apt-get install -y nitrogen
sudo apt-get install -y nm-applet
sudo apt-get install -y flameshot
sudo apt-get install -y screenkey
sudo apt-get install -y kdeconnect
sudo apt-get install -y keynav
sudo apt-get install -y network-manager
sudo apt-get install -y trash-cli
sudo apt-get install -y xbacklight
sudo apt-get install -y go-mtpfs
sudo apt-get install -y brightnessctl
sudo apt-get install -y light
sudo apt-get install -y gnome-tweaks
sudo apt-get install -y android-file-transfer
sudo apt-get install -y pv
sudo apt-get install -y iw
sudo apt-get install -y xcb
sudo apt-get install -y sox
sudo apt-get install -y vlc
sudo apt-get install -y mdp
sudo apt-get install -y ncal
sudo apt-get install -y kmix
sudo apt-get install -y lynx
sudo apt-get install -y tree
sudo apt-get install -y inxi
sudo apt-get install -y cmus
sudo apt-get install -y xsdt
sudo apt-get install -y ccal
sudo apt-get install -y mtpfs
sudo apt-get install -y micro
sudo apt-get install -y atool
sudo apt-get install -y socat
sudo apt-get install -y aewan
sudo apt-get install -y cmark
sudo apt-get install -y gnupg
sudo apt-get install -y nsnake
sudo apt-get install -y bastet
sudo apt-get install -y figlet
sudo apt-get install -y catimg
sudo apt-get install -y elinks
sudo apt-get install -y pandoc
sudo apt-get install -y gputils
sudo apt-get install -y odt2txt
sudo apt-get install -y calibre
sudo apt-get install -y pcmanfm
sudo apt-get install -y redshift
sudo apt-get install -y whiptail
sudo apt-get install -y powertop
sudo apt-get install -y cpufetch
sudo apt-get install -y markdown
sudo apt-get install -y fontforge
sudo apt-get install -y ninvaders
sudo apt-get install -y mediainfo
sudo apt-get install -y colordiff
sudo apt-get install -y xautolock
sudo apt-get install -y setxkbnap
sudo apt-get install -y linuxlogo
sudo apt-get install -y mesa-utils
sudo apt-get install -y renameutils
sudo apt-get install -y mupdf-tools
sudo apt-get install -y bucklespring
sudo apt-get install -y usb-creator-gtk
sudo apt-get install -y gnome-bluetooth
sudo apt-get install -y volumeicon-alsa
sudo apt-get install -y cool-retro-term
sudo apt-get install -y gnome-screenshot
sudo apt-get install -y ffmpegthumbnailer
echo ""

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

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
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/


# echo ""
# echo "NEXT NEOVIM SETUP"
# echo "want to stop right here ? then press CTRL-C"
# sleep 15


#  _   _ _____ _____     _____ __  __
# | \ | | ____/ _ \ \   / /_ _|  \/  |
# |  \| |  _|| | | \ \ / / | || |\/| |
# | |\  | |__| |_| |\ V /  | || |  | |
# |_| \_|_____\___/  \_/  |___|_|  |_|
#
# echo ""
# echo "NEOVIM !!!"
# echo ""
# mkdir -p ~/source-installed
# cd ~/source-installed
# curl -JOL https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
# sudo dpkg -i ./nvim-linux64.deb
# cd ~

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
cd ~/source-installed || exit
git clone https://github.com/pystardust/ytfzf
cd ytfzf || exit
sudo make install doc
cd ~ || exit
