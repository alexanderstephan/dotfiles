set nocompatible

set number
filetype plugin on
syntax on

set encoding=utf-8

set splitbelow
set splitright

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <F6> :setlocal spell! spelllang=en_us,es<CR>
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

vnoremap <C-c> *cy<esc>:!echo -n '<C-R>c' \|<space>xclip<CR><enter>

