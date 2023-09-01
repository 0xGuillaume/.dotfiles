#!/bin/bash

sudo dnf update -y

# Environment variables
export TIME_LIGHT=8
export TIME_DARK=19

# Custom repositories
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Snap & Plugins Core
sudo dnf install snapd -y
sudo dnf install dnf-plugins-core -y

# Organize directories
ln -s ~/Desktop ~/desktop
ln -s ~/Documents ~/documents
ln -s ~/Downloads ~/downloads
ln -s ~/Music ~/music
ln -s ~/Pictures ~/pictures
ln -s ~/Templates ~/templates
ln -s ~/Videos ~/videos
mkdir ~/projects
mkdir ~/.config

# Python relative

# Clouds CLI
sudo dnf install -y asciidoctor
sudo dnf install -y azure-cli
sudo dnf install -y bat
sudo dnf install -y docker-ce docker-ce-cli containerd.io
sudo dnf install -y docker-compose
sudo dnf install -y exa
sudo dnf install -y fish
sudo dnf install -y gnome-tweak-tool
sudo dnf install -y gnome-extensions-app
sudo dnf install -y keepass
sudo dnf install -y nodejs
sudo dnf install -y powerline powerline-fonts
sudo dnf install -y python3
sudo dnf install -y python3-virtualenv
sudo dnf install -y python3-notebook mathjax sscg
sudo dnf install -y terraform
sudo dnf install -y vim
sudo dnf install -y vim-powerline


# Npm Packages
npm install -g tldr

# Vim settings
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/.vimrc > ~/.vimrc
vim +'PlugInstall --sync' +qa

# Nerd Fonts > Cascadia Code
cd /usr/share/fonts/ && sudo mkdir cascadiacode && cd cascadiacode
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip 
sudo unzip *.zip
sudo rm *Windows* *.zip
cd
fc-cache -f -v

# Docker & RDP
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker


# Install Discord
sudo snap install discord
sudo snap install remmina

# Tela Icons
git -C ~/downloads/ clone https://github.com/vinceliuice/Tela-icon-theme.git 
sh ~/downloads/Tela-icon-theme/install.sh

# Gnome Terminal
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/gnome_terminal/onedark.dconf > ~/.config/onedark.dconf
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/.config/onedark.dconf

# Bashrc
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/.bashrc > ~/.bashrc
source ~/.bashrc
