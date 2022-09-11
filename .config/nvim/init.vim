"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

filetype on
filetype plugin on
filetype plugin indent on

" Fish shell breaks vim appearantly
set shell=sh
" Enable syntax highlighting and select color schemes
set termguicolors
set pumheight=10

" Enable spellcheck
set spell
set spelllang=en

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set wildmode=longest:full,full
set nowrap
set signcolumn=yes:2
set title
set list
set listchars=tab:▸\ ,trail:·
set scrolloff=8
set sidescrolloff=8
set exrc
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set nocompatible
set completeopt+=noselect
set hidden
set showtabline=1
set relativenumber " Show line numbers relative to current line
set nu rnu " Set only the current line to be absolute
set mouse=a " Enable mouse mode
set nohlsearch " Disable annoying highlighting after search
set clipboard^=unnamed,unnamedplus
set nojoinspaces
set splitright
set confirm

" Adjust tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------
"
let mapleader="\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" When text is wrapped, move by terminal rows, not lines, unless a count is provided
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Paste replace visual selection without copying it
vnoremap <leader>p "_dP

" Make Y behave like the other capitals
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

" Quickly escape to normal mode
imap jj <esc>

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

cmap w!! %!sudo tee > /dev/null %

"-------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Specify a directory for plugins
set rtp+=~/.local/share/nvim/plugged

call plug#begin('~/.local/share/nvim/plugged')

" Pseudo IDE
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'tpope/vim-surround'
Plug 'github/copilot.vim'
Plug 'tpope/vim-fugitive'

" Language support
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'lervag/vimtex'              "LaTeX suite

" Color themes
Plug 'NLKNguyen/papercolor-theme' " Paper color
Plug 'morhetz/gruvbox'            " Gruvbox
Plug 'ayu-theme/ayu-vim'          " Ayu
Plug 'phanviet/vim-monokai-pro'   " Monokai Pro
Plug 'sainnhe/everforest'         " Ever forest

" Fancy Plugins
Plug 'itchyny/lightline.vim'      " Status bar
Plug 'brooth/far.vim'             " Find and replace
Plug 'voldikss/vim-floaterm'

call plug#end()

source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/vim-go.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/fzf.vim

" Color schemes
let ayucolor="dark"   " for dark version of theme
colorscheme gruvbox
highlight Normal guibg=none
highlight NonText guibg=none

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

" Stupid fix for Coc popup menu
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1):
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

hi CocSearch ctermfg=12 guifg=#18A3FF
hi CocMenuSel ctermbg=109 guibg=#13354A


