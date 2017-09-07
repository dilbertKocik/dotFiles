#!/bin/bash

this_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for f in $(find -E . -name ".*" ! -regex ".*git(ignore|modules)?$" -depth 1); do
    if [[ -e $HOME/$f ]]; then
        mv $HOME/$f $HOME/$f.old
    fi
    ln -s ${this_dir}/$f $HOME/$f
done