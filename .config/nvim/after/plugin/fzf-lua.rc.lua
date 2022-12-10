vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<c-B>',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>qq',
    "<cmd>lua require('fzf-lua').quickfix()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>oo',
    "<cmd>lua require('fzf-lua').oldfiles()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>gg',
    "<cmd>lua require('fzf-lua').git_files()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>gs',
    "<cmd>lua require('fzf-lua').git_status()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>gb',
    "<cmd>lua require('fzf-lua').git_branches()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>gr',
    "<cmd>lua require('fzf-lua').lgrep_curbuf()<CR>",
    { noremap = true, silent = true }
)
