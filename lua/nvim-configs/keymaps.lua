-- Macos translation
-- Command - Windows Key
-- Control - Ctrl
-- Option - Alt


local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

------------------------------------------------------
--  Testing Keybindings, overwrite when necessary   --
------------------------------------------------------
-- Navigate buffers Testing
keymap("n", "<C-Tab>", ":echo 'Ctrl-Tab pressed'<CR>", opts)
keymap("n", "<C-S-Tab>", ":echo 'Ctrl-Shift-Tab pressed'<CR>", opts)
keymap("n", "<C-h>", ":echo 'Ctrl-h pressed'<CR>", opts)
keymap("n", "<C-j>", ":echo 'Ctrl-j pressed'<CR>", opts)
keymap("n", "<C-k>", ":echo 'Ctrl-k pressed'<CR>", opts)
keymap("n", "<C-l>", ":echo 'Ctrl-l pressed'<CR>", opts)
keymap("n", "<C-H>", ":echo 'Ctrl-h pressed'<CR>", opts)
keymap("n", "<C-J>", ":echo 'Ctrl-j pressed'<CR>", opts)
keymap("n", "<C-K>", ":echo 'Ctrl-k pressed'<CR>", opts)
keymap("n", "<C-L>", ":echo 'Ctrl-l pressed'<CR>", opts)
keymap("n", "<C-S-h>", ":echo 'Ctrl-Shift-h pressed'<CR>", opts)
keymap("n", "<C-S-j>", ":echo 'Ctrl-Shift-j pressed'<CR>", opts)
keymap("n", "<C-S-k>", ":echo 'Ctrl-Shift-k pressed'<CR>", opts)
keymap("n", "<C-S-l>", ":echo 'Ctrl-Shift-l pressed'<CR>", opts)
keymap("n", "<A-Tab>", ":echo 'Alt-Tab pressed'<CR>", opts)
keymap("n", "<A-S-Tab>", ":echo 'Alt-Shift-Tab pressed'<CR>", opts)
keymap("n", "<A-h>", ":echo 'Alt-h pressed'<CR>", opts)
keymap("n", "<A-j>", ":echo 'Alt-j pressed'<CR>", opts)
keymap("n", "<A-k>", ":echo 'Alt-k pressed'<CR>", opts)
keymap("n", "<A-l>", ":echo 'Alt-l pressed'<CR>", opts)
keymap("n", "<A-H>", ":echo 'Alt+Shift+h'<CR>", opts)
keymap("n", "<A-J>", ":echo 'Alt+Shift+j'<CR>", opts)
keymap("n", "<A-K>", ":echo 'Alt+Shift+k'<CR>", opts)
keymap("n", "<A-L>", ":echo 'Alt+Shift+l'<CR>", opts)
-- Open Close buffers
keymap('n', '<C-t>', ':echo "Ctrl-t was pressed"<CR>', opts)
keymap('n', '<C-S-t>', ':echo "Ctrl-Shift-t was pressed"<CR>', opts)
keymap('n', '<A-w>', ':echo "Alt-w was pressed"<CR>', opts)
keymap('n', '<A-b>', ':echo "Alt-b was pressed"<CR>', opts)
keymap('n', '<A-m>', ':echo "Alt-m was pressed"<CR>', opts)
-- Other buffer stuff
vim.keymap.set({ "n", "i" }, "<C-s>", ":echo 'Ctrl-s was pressed'<CR>", { desc = "Save file" })
vim.keymap.set({ "n", "i" }, "<A-h>", ":echo 'Alt/Option-h was pressed'<CR>", { desc = "Remove highlight" })

-- Resize with arrows
keymap("n", "<A-Up>", ":echo 'Alt-Up was pressed'<CR>", opts)
keymap("n", "<A-Down>", ":echo 'Alt-Down was pressed'<CR>", opts)
keymap("n", "<A-Left>", ":echo 'Alt-Left was pressed'<CR>", opts)
keymap("n", "<A-Right>", ":echo 'Alt-Right was pressed'<CR>", opts)
-- Insert --
-- Press jk fast to enter
keymap("i", "jk", ":echo 'jk was pressed'<CR>", opts)
keymap("i", "kj", ":echo 'kj was pressed'<CR>", opts)
keymap("i", "jj", ":echo 'jj was pressed'<CR>", opts)


-----------------------------------------------------
--               Desired Keybindings              ---
-----------------------------------------------------
-- Navigate buffers Desired Settings, try here, but copy to local file (see below):
keymap("n", "<C-Tab>", ":bnext<CR>", opts)
keymap("n", "<C-S-Tab>", ":bprevious<CR>", opts)
-- keymap("n", "<C-h>", "<Ctrl-w>h", opts)
-- keymap("n", "<C-j>", "<Ctrl-w>j", opts)
-- keymap("n", "<C-k>", "<Ctrl-w>k", opts)
-- keymap("n", "<C-l>", "<Ctrl-w>l", opts)
keymap("n", "<C-S-h>", ":topleft vsplit<CR>", opts)
keymap("n", "<C-S-j>", "<C-w>s", opts)
keymap("n", "<C-S-k>", ":aboveleft split<CR>", opts)
keymap("n", "<C-S-l>", "<C-w>v", opts)
-- keymap("n", "<A-Tab>", ":echo 'Alt-Tab pressed'<CR>", opts)
-- keymap("n", "<A-S-Tab>", ":echo 'Alt-Shift-Tab pressed'<CR>", opts)
-- Move to beginning of line with <Alt-h>
-- keymap('n', '<A-h>', '0', opts)
-- keymap("n", "<A-j>", ":echo 'Alt-j pressed'<CR>", opts)
-- keymap("n", "<A-k>", ":echo 'Alt-k pressed'<CR>", opts)
-- Move to end of line with <Alt-l>
keymap('n', '<A-l>', '$', opts)
-- keymap("n", "<A-S-h>", ":echo 'Alt-Shift-h pressed'<CR>", opts)
-- keymap("n", "<A-S-j>", ":echo 'Alt-Shift-j pressed'<CR>", opts)
-- keymap("n", "<A-S-k>", ":echo 'Alt-Shift-k pressed'<CR>", opts)
-- keymap("n", "<A-S-l>", ":echo 'Alt-Shift-l pressed'<CR>", opts)
-- Open Close buffers
keymap('n', '<C-t>', ':enew<CR>', opts)
keymap('n', '<C-S-t>', ':e#<CR>', opts)
keymap('n', '<A-w>', ':x<CR>', opts)
keymap('n', '<A-b>', ':bd<CR>', opts)
-- Other buffer stuff
vim.keymap.set({ "n", "i" }, "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set({ "n", "i" }, "<A-h>", ":noh<CR>", { desc = "Remove highlight" })

-- NOTE: can't do Ctrl+m, this conflicts with ENTER!!!
-- NOTE: must be Alt+m, not Ctrl+m
-- Move cursor to the middle character of the line with <Alt-m>
vim.keymap.set('n', '<A-m>', function()
  local line = vim.api.nvim_get_current_line()
  local mid = math.floor(#line / 2)
  vim.api.nvim_win_set_cursor(0, { vim.api.nvim_win_get_cursor(0)[1], mid })
end, opts)
-- Resize with arrows
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)
-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)



-- Copy and Paste, Paste string remain in register
keymap("v", "p", '"_dP', opts)
