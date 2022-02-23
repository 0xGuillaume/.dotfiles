# Vim Configuration

# Linux

To start the installation script run the following command :

```sh
curl https://raw.githubusercontent.com/0xGuillaume/.dotfiles/main/install.sh > ~/install.sh && sh ~/install.sh
```


# Windows

You need to first download [vim-plug](https://github.com/junegunn/vim-plug) in order to use *_vimrc*.

```sh
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```
