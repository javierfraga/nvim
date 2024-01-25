------------------------------------------------
-- * and # super command prevent initial jump --
------------------------------------------------
--ref: https://stackoverflow.com/questions/4256697/vim-search-and-highlight-but-do-not-jump
-- Mapping for searching forward
vim.api.nvim_set_keymap('n', '*', [[:keepjumps normal! mi*`i<CR>]], { noremap = true })
-- Mapping for searching backward
vim.api.nvim_set_keymap('n', '#', [[:keepjumps normal! mi#`i<CR>]], { noremap = true })
