set nocompatible
set completeopt+=noselect
filetype on
set hidden
"set showtabline=0
set tabstop=4
set shiftwidth=4
set expandtab
set number
set clipboard+=unnamedplus

" Specify a directory for plugins
set rtp+=~/.local/share/nvim/plugged

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'itchyny/lightline.vim'
Plug 'brooth/far.vim'                     " Find and replace
Plug 'flazz/vim-colorschemes'             " Colorschemes
Plug 'chriskempson/base16-vim'            " Base 16 colors
Plug 'kamwitsta/flatwhite-vim'            " Flatwhite
Plug 'nightsense/cosmic_latte'            " Cosmic Latte
Plug 'nightsense/snow'
Plug 'NLKNguyen/papercolor-theme'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" Initialize plugin system
call plug#end()

filetype on
filetype plugin on
filetype plugin indent on

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 0
let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup = 1
