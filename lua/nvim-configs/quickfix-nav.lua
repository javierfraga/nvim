-- Example to put contents in Quickfix menu :bufdo vimgrepadd text % | copen, cnext and cprev
-- Navigate to the next quickfix item
vim.api.nvim_set_keymap('n', ']q', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', ']q', ':cnext<CR>', { noremap = true, silent = true })

-- Navigate to the previous quickfix item
vim.api.nvim_set_keymap('n', '[q', ':cprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '[q', ':cprev<CR>', { noremap = true, silent = true })
