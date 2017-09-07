#!/bin/bash

git submodule init && git submodule update

cd .oh-my-zsh
git update-index --assume-unchanged custom/example.zsh
git update-index --assume-unchanged custom/plugins/example/example.plugin.zsh
rm -r custom
ln -s ../ohMyZshCustom custom
cd ..

./createLinks.sh