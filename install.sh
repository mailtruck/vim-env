#!/bin/bash

cd ..
mv .vimrc .vimrc.bak
mv .vim .vim.bak
ln -s ./vim-env/.vimrc .vimrc
ln -s ./vim-env/.vim/ .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

