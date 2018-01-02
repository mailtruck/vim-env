#!/bin/bash

sudo apt install cmake -y
git clone  https://github.com/Valloric/YouCompleteMe.git $HOME/.vim/bundle/YouCompleteMe
cd $HOME/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

./install.py --js-completer --go-completer --clang-completer
