"Basics:
let mapleader = " "

" Enable line numbers
set number

" Make sure to enable dark mode if not set by the theme
set bg=dark

" Copy visual selection automatically to clipboard
set go+=a

" Enable mouse support
set mouse=a

" Disable search highlighting
set nohlsearch

" Enable system clipboard
set clipboard+=unnamedplus

" Enable syntax highlighting
syntax on

" Set text encoding
set encoding=utf-8

" Enable autocompletion
set wildmode=longest,list,full

" Disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0

" Split to the right instead of below
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
