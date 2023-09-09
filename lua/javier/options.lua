-- :help options
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.smartcase = true                        -- smart case: Override the 'ignorecase' option if the search pattern contains upper case characters.
vim.opt.smartindent = true                      -- Do smart autoindenting when starting a new line
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- pressing the <Tab> key will insert four spaces. affects how tab characters are displayed visually,
vim.opt.softtabstop = 2                         -- pressing the <Tab> key will insert four spaces even if the tabstop is set to a different value. affects the number of spaces inserted.
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.cursorcolumn = false                     -- highlight the current col
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = true                             -- display lines as one long line
vim.opt.scrolloff = 2                           -- Minimal number of screen lines to keep above and below the cursor
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications

vim.opt.shortmess:append "c"                    -- ensuring that completion messages will be suppressed

vim.api.nvim_set_option("whichwrap", vim.o.whichwrap .. ",h,l") -- Add 'h' and 'l' to the whichwrap option, wraps to next line
--vim.cmd "set whichwrap+=h,l"

-- I had to change a neovim file for this to work:
-- /usr/local/Cellar/neovim/0.9.1/share/nvim/runtime/ftplugin/lua.vim
--vim.cmd [[set formatoptions-=cro]]
-- Remove 'c', 'r', and 'o' from the formatoptions option
vim.opt.formatoptions:remove('c') -- c: In normal mode, automatically wrap comments using the textwidth setting.
vim.opt.formatoptions:remove('r') -- r: Automatically insert the comment leader (// or #, for example) when you press Enter in Insert mode after starting a comment line.
vim.opt.formatoptions:remove('o') -- o: Automatically insert the comment leader at the start of a new line in Insert mode when it follows a line that starts with a comment.

vim.api.nvim_set_option("guicursor", "a:-Cursor-blinkwait1-blinkoff1-blinkon1") -- Set blinking cursor
--vim.cmd "set guicursor+=a:-Cursor-blinkwait1-blinkoff1-blinkon1"

vim.opt.iskeyword:append("-") -- Add '-' to the iskeyword option, make words-like-this single words
--vim.cmd [[set iskeyword+=-]]


