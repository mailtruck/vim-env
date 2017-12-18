#!/bin/bash

cd ..
mv .vimrc .vimrc.bak
mv .vim .vim.bak
ln -s ./vim-env/.vimrc .vimrc
ln -s ./vim-env/.vim/ .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

var1="16.4"
var2=`lsb_release -r | awk '{print $2}'`
if [ "var2 == "$var1" ]
  sudo apt-get install dialog
  ./set_bg.sh
fi

