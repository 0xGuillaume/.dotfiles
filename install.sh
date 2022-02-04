#!/bin/bash

sudo dnf install python3
sudo dnf install python3-venv
sudo dnf install python3-notebook mathjax sscg

sudo dnf install vim
wget -P . https://github.com/0xGuillaume/.dotfiles/blob/main/.vimrc

# Nerd Fonts > Cascadia Code
$cascadia_path = /usr/share/fonts/cascadia-code
sudo mkdir $cascadia-code && cd $cascadia_path
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
unzip *.zip
find . -name "*Windows*" \#-delete
rm *.zip
fc-cache -f -v


# Install powerline
sudo dnf install powerline powerline-fonts
sudo dnf install vim-powerline


