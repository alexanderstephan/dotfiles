call plug#begin('~/.local/share/nvim/plugged')

Plug 'dense-analysis/ale' " For Linting
Plug 'lervag/vimtex' "LaTeX suite
Plug 'scrooloose/nerdtree' "File manager
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'itchyny/lightline.vim'
Plug 'brooth/far.vim'                     " Find and replace
Plug 'nightsense/cosmic_latte'            " Cosmic Latte
Plug 'NLKNguyen/papercolor-theme'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

call plug#end()

filetype on
filetype plugin on
filetype plugin indent on

set nocompatible
set completeopt+=noselect
set hidden
set showtabline=1
set relativenumber
set clipboard+=unnamedplus

" Make tabs appear smaller
set tabstop=4

"set list " Enables indentation highlighting

" Specify a directory for plugins
set rtp+=~/.local/share/nvim/plugged

" Settings for plugins
let g:deoplete#enable_at_startup=1
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

" settings for vimtex
let g:vimtex_view_general_viewer = 'Zathura'
