"Basics
let mapleader = " "
set number
set bg=dark
set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus
syntax on
set encoding=utf-8

" Enable autocompletion
set wildmode=longest,list,full

" Disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
