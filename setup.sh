#!/usr/bin/env bash
#
# Get code
#
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Setup links
#
sudo ln -s ~/dotfiles/gitconfig ~/.gitconfig
#
sudo ln -s ~/dotfiles/profile ~/.profile  #  <--may not work for AWS
#
sudo ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
#
sudo ln -s ~/dotfiles/vimrc ~/.vimrc
# End
