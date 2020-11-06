call plug#begin('~/.local/share/nvim/plugged')

" Pseudo IDE
Plug 'scrooloose/nerdtree' " File manager
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Language support
Plug 'neovimhaskell/haskell-vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'lervag/vimtex' "LaTeX suite

" Color themes
Plug 'nightsense/cosmic_latte' " Cosmic Latte
Plug 'NLKNguyen/papercolor-theme' " Paper color
Plug 'morhetz/gruvbox' " Gruvbox

" Fancy Plugins
Plug 'itchyny/lightline.vim' " Status bar
Plug 'brooth/far.vim' " Find and replace

call plug#end()

" Enable syntax highlighting and select color scheme
syntax on
colorscheme gruvbox

" Auto start NERDTree when no file selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree with ctrl + N
map <C-n> :NERDTreeToggle<CR>

filetype on
filetype plugin on
filetype plugin indent on

set nocompatible
set completeopt+=noselect
set hidden
set showtabline=1
set relativenumber
set clipboard+=unnamedplus
set mouse=a " Enable mouse mode, especially convient for NERDTree

" Make tabs appear smaller
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"Enables indentation highlighting
set list 

" Specify a directory for plugins
set rtp+=~/.local/share/nvim/plugged

" Settings for go 
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

" settings for vimtex
let g:vimtex_view_general_viewer = 'Zathura'

" Tab completion for coc
inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1] =~# '\s'
endfunction
