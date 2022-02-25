#!/bin/bash

# >>> Environment variables
export TIME_LIGHT=8
export TIME_DARK=19


# >>> Snap
sudo dnf install snapd -y


# >>> Organize directories
ln -s ~/Desktop ~/desktop
ln -s ~/Documents ~/documents
ln -s ~/Downloads ~/downloads
ln -s ~/Music ~/music
ln -s ~/Pictures ~/pictures
ln -s ~/Templates ~/templates
ln -s ~/Videos ~/videos
mkdir ~/projects
mkdir ~/.config
mkdir ~/documents/school/


# >>> Python relative
sudo dnf install python3 -y
sudo dnf install python3-venv -y
sudo dnf install python3-notebook mathjax sscg -y


# >>> NodeJS
sudo dnf install nodejs -y


# >>> Vim settings
sudo dnf install vim -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/.vimrc > ~/.vimrc
vim +'PlugInstall --sync' +qa


# >>> Nerd Fonts > Cascadia Code
cd /usr/share/fonts/ && sudo mkdir cascadiacode && cd cascadiacode
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip 
sudo unzip *.zip
sudo rm *Windows* *.zip
cd
fc-cache -f -v


# >>> Install powerline
sudo dnf install powerline powerline-fonts -y
sudo dnf install vim-powerline -y


# >>> Docker & RDP
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io -y
sudo dnf install docker-compose -y
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
sudo snap install remmina -y


# >>> Install Discord
sudo snap install discord


# >>> Install Keepass
sudo dnf install keepass -y


# >>> Gnome 

# > Gnome Tools
sudo dnf install gnome-tweak-tool -y
sudo dnf install gnome-extensions-app -y

# > Tela Icons
git -C ~/downloads/ clone https://github.com/vinceliuice/Tela-icon-theme.git 
sh ~/downloads/Tela-icon-theme/install.sh

# > Gnome Terminal
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/gnome_terminal/onedark.dconf > ~/.config/onedark.dconf
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/.config/onedark.dconf



# >>> Bashrc
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/.bashrc > ~/.bashrc
source ~/.bashrc


