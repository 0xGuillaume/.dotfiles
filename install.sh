#!/bin/bash

function python() {
    # Setup Python environment

    sudo dnf install python3
    sudo dnf install python3-venv
    sudo dnf install python3-notebook mathjax sscg
}


function vim() {
    # Configure Vim settings

    sudo dnf install vim
    wget -P . https://github.com/0xGuillaume/.../.vimrc

    # Nerd Fonts > Cascadia Code
    $cascadia_path = /usr/share/fonts/cascadia-code
    sudo mkdir $cascadia-code && cd $cascadia_path
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
    unzip *.zip
    find . -name "*Windows*" \#-delete
    rm *.zip
    fc-cache -f -v

    


}


function powerline() {
    # Install powerline
    sudo dnf install powerline powerline-fonts
    sudo dnf install vim-powerline
}


function install() {
    # Main Job

    sudo dnf upgrade
    python()
    vim()
    powerline()
}


install()