#!/bin/bash

# >>> Environment variables
export TIME_LIGHT=8
export TIME_DARK=19


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
wget -P . https://github.com/0xGuillaume/.dotfiles/blob/main/.vimrc
vim +'PlugInstall --sync' +qa


# >>> Nerd Fonts > Cascadia Code
$cascadia_path = /usr/share/fonts/cascadia-code
sudo mkdir $cascadia-code && cd $cascadia_path
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
unzip *.zip
find . -name "*Windows*" \#-delete
rm *.zip
fc-cache -f -v

# >>> Install powerline
sudo dnf install powerline powerline-fonts -y
sudo dnf install vim-powerline -y


# >>> Docker & RDP
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker
sudo snap install remmina -y


# >>> Install Discord
sudo snap install discord


# >>> Install Keepass
sudo dnf install keepass -y



# >>> Gnome Theme

# > Tela Icons
git -C ~/Downloads/ clone https://github.com/vinceliuice/Tela-icon-theme.git 
sh ~/Downloads/Tela-icon-theme/install.sh

# > Dash To Dock
git -C ~/Downloads/ clone https://github.com/micheleg/dash-to-dock.git
make -C ~/Downloads/dash-to-dock/
make -C ~/Downloads/dash-to-dock/ install

