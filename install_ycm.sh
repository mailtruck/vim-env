#!/bin/bash

sudo apt-install cmake -y
cd $HOME/.vim/bundle/YouCompleteMe

sudo npm install -g typescript
./install.py --js-completer --go-completer --clang-completer
