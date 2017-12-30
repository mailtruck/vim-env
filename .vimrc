set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'phpcomplete.vim'
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = " "

if has("syntax")
  syntax on
endif

 set background=light

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set expandtab
set shiftwidth=2
set softtabstop=2


autocmd BufNewFile,BufRead *.go set shiftwidth=8
autocmd BufNewFile,BufRead *.go set softtabstop=8
set autoindent
set number
autocmd VimEnter * set autoindent


hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

"execute pathogen#infect()
"call pathogen#helptags()
set runtimepath^=~/.vim/bundle/ctrlp.vim


map <C-n> :NERDTreeToggle<CR>

set noswapfile
set term=screen-256color

set laststatus=2
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set rtp+=/usr/local/opt/fzf


syn match Oddlines "^.*$" contains=ALL nextgroup=Evenlines skipnl
syn match Evenlines "^.*$" contains=ALL nextgroup=Oddlines skipnl
hi Oddlines ctermbg=blue guibg=#FFFF99 
hi Evenlines ctermbg=magenta guibg=#FFCCFF

let g:go_fmt_command = "goimports"

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set relativenumber

let maplocalleader = "\\"
set background=dark
hi Visual term=reverse cterm=reverse guibg=Grey
set nocp
set backspace=indent,eol,start

