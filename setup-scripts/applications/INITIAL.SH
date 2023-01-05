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

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
echo ""
echo "FONTS INSTALLATION"
echo ""
curl -fLo "Hack Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete.ttf
curl -fLo "Hack Bold Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
curl -fLo "Hack Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
curl -fLo "Hack Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete.ttf

curl -fLo "JetBrains Mono Bold Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/BoldItalic/complete/JetBrains%20Mono%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
curl -fLo "JetBrains Mono Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/Bold/complete/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete.ttf
curl -fLo "JetBrains Mono Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/Italic/complete/JetBrains%20Mono%20Italic%20Nerd%20Font%20Complete.ttf
curl -fLo "JetBrains Mono Medium Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/Medium/complete/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete.ttf

# for easy backlight control

sys="$(sudo dmidecode -s system-version)"

if [[ "${sys}" == "Lenovo E41-25" ]]; then
    sudo chmod 664 /sys/class/backlight/amdgpu_bl0/brightness
fi

sudo groupadd video
sudo usermod -aG video $USER

# make sudo last longer

cd $HOME
git clone git@github.com:thalha-dev/.dotfiles.git
cd ~/.dotfiles
sudo stow -v -t /etc/sudoers.d/ sudo/

xset r rate 240 50

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.profile
echo 'export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64' >> ~/.profile
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.profile
echo 'export PATH=$PATH:$HOME/.cargo/bin' >> ~/.profile
echo 'export PATH=$PATH:$HOME/.local/share/nvim/mason/bin ' >> ~/.profile
echo 'export PATH=$PATH:$HOME/applications' >> ~/.profile
