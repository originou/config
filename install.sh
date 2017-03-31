#!/bin/bash

for file in $(ls -A -I.git -Iinstall.sh); do
  cp -r $file $HOME/
no done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
