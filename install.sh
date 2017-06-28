#!/bin/bash

cd ..
mv .vimrc .vimrc.bak
mv .vim .vim.bak
ln -s vimrc/.vimrc .vimrc
ln -s ./vimrc/.vim/ .vim

