#!/bin/bash

this_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
custom_dir="ohMyZshCustom"

for f in $(find -E . -regex "(.*)ohMyZshCustom(.*)\.(.*)" -depth 2 -execdir echo {} ';'); do
    ln -s ${this_dir}/${custom_dir}/$f ${this_dir}/.oh-my-zsh/custom/$f
done

ln -s ${this_dir}/${custom_dir}/plugins ${this_dir}/.oh-my-zsh/custom/plugins
ln -s ${this_dir}/${custom_dir}/themes ${this_dir}/.oh-my-zsh/custom/themes