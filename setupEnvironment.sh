#!/bin/bash

## Install the powerline fonts for the iterm theme
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

## Install zsh
brew install zsh zsh-completions

## Initialize the .oh-my-zsh submodule
git submodule init && git submodule update

## Set up the custom folder so it points to the one in the dotfiles repo for easy management
cd .oh-my-zsh
git update-index --assume-unchanged custom/example.zsh
git update-index --assume-unchanged custom/plugins/example/example.plugin.zsh
rm -r custom
ln -s ../ohMyZshCustom custom
cd ..

## Create the symlinks to all of the dotfiles
./createLinks.sh
