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

-- Navigate buffers
-- keymap("n", "<Tab>", ":bnext<CR>", opts)
-- keymap("n", "<C-i>", ":bnext<CR>", opts)
-- keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
-- keymap("n", "<C-i>", ":echo 'Ctrl-Tab pressed'<CR>", opts)
-- keymap("n", "<C-Tab>", ":echo 'Ctrl-Tab pressed'<CR>", opts)
-- keymap("n", "<C-S-Tab>", ":echo 'Ctrl-Shift-Tab pressed'<CR>", opts)
keymap("n",   "<C-Tab>", ":bnext<CR>",                        opts )
keymap("n", "<C-S-Tab>", ":bprevious<CR>",                    opts )
keymap("n", "<A-S-Tab>", ":echo 'Alt-Shift-Tab pressed'<CR>", opts )
keymap("n",   "<A-Tab>", ":echo 'Alt-Tab pressed'<CR>",       opts )
-- Open new buffer
-- keymap("n", "<C-t>", ":enew<CR>", opts)
-- keymap("i", "<C-t>", "<ESC>:enew<CR>", opts)
-- Split buffers
-- keymap("n", "<C-h>", ":echo 'Ctrl-h pressed'<CR>", opts)
-- keymap("n", "<C-j>", ":echo 'Ctrl-j pressed'<CR>", opts)
-- keymap("n", "<C-k>", ":echo 'Ctrl-k pressed'<CR>", opts)
-- keymap("n", "<C-l>", ":echo 'Ctrl-l pressed'<CR>", opts)
keymap("n", "<C-S-h>", ":echo 'Ctrl-Shift-h pressed'<CR>", opts)
keymap("n", "<C-S-j>", ":echo 'Ctrl-Shift-j pressed'<CR>", opts)
keymap("n", "<C-S-k>", ":echo 'Ctrl-Shift-k pressed'<CR>", opts)
keymap("n", "<C-S-l>", ":echo 'Ctrl-Shift-l pressed'<CR>", opts)
-- keymap("n", "<C-l>", "<C-w>v", opts)
-- keymap("n", "<C-K>", ":aboveleft split<CR>", opts)
-- keymap("n", "<C-J>", "<C-w>s", opts)
-- keymap("n", "<C-H>", ":leftabove vsplit<CR>", opts)
-- Close current buffer
-- keymap("n", "<C-w>", ":bd<CR>", opts)
-- Open last close buffer
-- keymap("n", "<C-T>", ":e#<CR>", opts)

-- keymap("n", "<C-L>", ":bnext<CR>", opts)
-- keymap("n", "<C-H>", ":bprevious<CR>", opts)
-- keymap("n", "<leader>l", ":bnext<CR>", opts)
-- keymap("n", "<leader>h", ":bprevious<CR>", opts)

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- for whatever reason, this is not working in Macos
-- and creating conflicts for below mappings
-- keymap("n", "<S-C-h>", "<C-w>h", opts)
-- keymap("n", "<S-C-j>", "<C-w>j", opts)
-- keymap("n", "<S-C-k>", "<C-w>k", opts)
-- keymap("n", "<S-C-l>", "<C-w>l", opts)

-- this is a good one. Just memorize
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
-- for whatever reason, this is not working in Macos
-- keymap("n", "<A-S-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<A-S-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<A-S-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<A-S-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-h>", ":echo 'Alt+h'<CR>", opts)
keymap("n", "<A-j>", ":echo 'Alt+j'<CR>", opts)
keymap("n", "<A-k>", ":echo 'Alt+k'<CR>", opts)
keymap("n", "<A-l>", ":echo 'Alt+l'<CR>", opts)
keymap("n", "<A-H>", ":echo 'Alt+Shift+h'<CR>", opts)
keymap("n", "<A-J>", ":echo 'Alt+Shift+j'<CR>", opts)
keymap("n", "<A-K>", ":echo 'Alt+Shift+k'<CR>", opts)
keymap("n", "<A-L>", ":echo 'Alt+Shift+l'<CR>", opts)
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
-- keymap("v", "<A-h>", "<gv", opts)
-- keymap("v", "<A-l>", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Copy and Paste, Paste string remain in register
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
