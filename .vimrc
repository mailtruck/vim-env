" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" optons, so any other options should be set AFTER setting 'compatible'.
"set compatible
let mapleader = " "

if has("syntax")
  syntax on
endif

 set background=dark

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
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

execute pathogen#infect()
call pathogen#helptags()
set runtimepath^=~/.vim/bundle/ctrlp.vim


map <C-n> :NERDTreeToggle<CR>


if has("gui_running")
  colorscheme molokai
endif
colorscheme molokai

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
