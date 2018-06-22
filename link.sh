#!/bin/sh
mkdir ~/.config/nvim
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
mkdir ~/.config/dein
ln -sf ~/dotfiles/plugins.toml ~/.config/dein/plugins.toml

# TODO: 自動化
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
