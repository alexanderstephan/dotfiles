--------------
-- Plugins ---
--------------

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, 'packer')

if (not status) then
    print("Packer not installed")
    return
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- TODO: Can possibly be removed.
vim.cmd [[
    packadd packer.nvim
    let g:neo_tree_remove_legacy_commands = 1
]]

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Toggle comments
    use 'preservim/nerdcommenter'

    -- Use vim keys for navigation in tmux
    use 'christoomey/vim-tmux-navigator'

    use 'lervag/vimtex' -- LaTeX suite

    -- LSP settings
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'neovim/nvim-lspconfig' -- LSP configs
    use 'hrsh7th/nvim-cmp' -- Completion

    -- Find and replace
    use 'brooth/far.vim'

    -- Gruvbox color theme
    use {
        'morhetz/gruvbox',
        config = function()
            vim.cmd [[colorscheme gruvbox]]
            require('highlights')
        end
    }

    -- Fast status bar written in lua
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Helper for installing language servers
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }

    -- Unified highlight for all filetypes
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    -- Tools for working with go
    use {
        'fatih/vim-go',
        run = ':GoUpdateBinaries',
    }

    -- Fuzzy finder
    use { 'ibhagwan/fzf-lua',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    use {
        'junegunn/fzf',
        run = './install --bin',
    }

    -- Lua replacement for NerdTree
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v2.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
        }
    }

    -- Centered mode without any distractions
    use {
        'folke/zen-mode.nvim',
        config = function()
            require('zen-mode').setup {
                window = {
                    width = .85 -- width will be 85% of the editor width
                }
            }
        end
    }

    use 'github/copilot.vim'
    use 'neovimhaskell/haskell-vim'
    if packer_bootstrap then
        require('packer').sync()
    end

    -- Unused plugins:
    -- use 'alx741/vim-hindent'
    -- use 'onsails/lspkind-nvim' -- vscode-like pictograms
    -- use 'L3MON4D3/LuaSnip'
    -- use 'nvim-lua/plenary.nvim'
    -- use 'nvim-telescope/telescope.nvim'
end)
