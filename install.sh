#!/bin/bash

cd ..
mv .vimrc .vimrc.bak
mv .vim .vim.bak
ln -s ./vim-env/.vimrc .vimrc
ln -s ./vim-env/.vim/ .vim
