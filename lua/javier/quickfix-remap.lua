-- Create key mappings for cnext and cprev
vim.api.nvim_set_keymap('n', ']q', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', ']q', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[q', ':cprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '[q', ':cprev<CR>', { noremap = true, silent = true })
