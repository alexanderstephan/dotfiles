-- Fish shell breaks vim appearantly
vim.opt.shell = 'fish'
-- Enable spellcheck
vim.opt.spell = true
vim.opt.spelllang = 'de_20'
-- TextEdit might fail if hidden is not set.
vim.opt.hidden = true
-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300
-- Give more space for displaying messages.
vim.opt.cmdheight = 3
vim.opt.wildmode = 'longest:full,full'
vim.opt.wrap = true
vim.opt.title = true
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', trail = '·' }
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.autoindent = true
vim.opt.exrc = true
vim.opt.backup = false
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.ignorecase = true
vim.opt.breakindent = true
vim.opt.signcolumn = 'yes:1'
vim.opt.showtabline = 1
vim.opt.relativenumber = true -- Show line numbers relative to current line
vim.opt.nu = true --'rnu' -- Set only the current line to be absolute
vim.opt.mouse = 'a' -- Enable mouse mode, especially convient for NERDTree
vim.opt.hlsearch = false -- Disable annoying highlighting after search
vim.opt.joinspaces = false
vim.opt.splitright = true
vim.opt.confirm = true

-- Adjust tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true

---------------------------------------------------------------------------
-- Key maps
---------------------------------------------------------------------------

-- Use space as the map leader
vim.g.mapleader = ' '

vim.keymap.set('', '<leader>', '<nop>')

-- Allow gf to open non-existent files
-- map gf :edit <cfile><cr>

-- Reselect visual selection after indenting
vim.keymap.set('v', '<', [[<gv]])
vim.keymap.set('v', '>', [[>gv]])

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', [[myy`y]])
vim.keymap.set('v', 'Y', [[myY`y]])

-- Paste replace visual selection without copying it
vim.keymap.set('v', '<leader>p', [["_dP]])

-- Make Y behave like the other capitals
vim.keymap.set('n', 'Y', 'y$')

-- Keep it centered
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'nzzzv')
vim.keymap.set('n', 'J', 'nmzJ`z')

-- Open the current file in the default program
-- nmap <leader>x :!xdg-open %<cr><cr>
-- Quicky escape to normal mode
vim.api.nvim_set_keymap('i', 'jj', '<esc>', {})

-- Easy insertion of a trailing ; or , from insert mode
vim.api.nvim_set_keymap('i', ';;', '<Esc>A;<Esc>', {})
vim.api.nvim_set_keymap('i', ',,', '<Esc>A,<Esc>', {})

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
-- noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
-- noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

-- TODO:
vim.cmd([[
map gf :edit <cfile><cr>
nmap <leader>x :!xdg-open %<cr><cr>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>
nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>
]])
