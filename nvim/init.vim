call plug#begin()
" Auto completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'zchee/deoplete-go', { 'do': 'make'}      " Go auto completion

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'

call plug#end()

"Enable deoplete
let g:deoplete#enable_at_startup = 1

" Enable line numbers
set relativenumber number

" Make sure to enable dark mode if not set by the theme
set bg=dark

" Disable search highlighting
set nohlsearch

" Enable system clipboard
set clipboard+=unnamedplus

" Enable syntax highlighting
syntax on

" Ignore case when searching
set ignorecase

" ... unless pattern contains uppercase letters
set smartcase

" Show cursor position
set showmatch

" Show commands in status bar
set showcmd

" Disable swap file (Get rid of annoying buffers)
set noswapfile

" Highlight current line
" set cursorline

" Smart indenting ;)
set smartindent

"Wrap long line, don't break words
set wrap linebreak

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

""" Tabs are Spaces
" Set 'tabstop' and 'shiftwidth' to whatever you prefer and use
" 	   'expandtab'.  This way you will always insert spaces.  The
" 	   formatting will never be messed up when 'tabstop' is changed.
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Make go syntax more colorful
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
