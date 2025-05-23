-- reload init.lua :luafile %
-- Settings
require "nvim-configs.options"
require "nvim-configs.whitespace"
require "nvim-configs.cursor-position"
require "nvim-configs.search-jumps"
require "nvim-configs.buffer-reload"
require "nvim-configs.diff-unsaved"
require "nvim-configs.file-dir-path"
require "nvim-configs.keymaps"
require "nvim-configs.cheatsheets"
require "nvim-configs.quickfix-nav"
require "nvim-configs.sessions"
-- replaces sequences [27;5;106~, [1;2P, [5;6~, etc. with `\r`
require "nvim-configs.container-paste-cleanup"

-- Plugins
-- require "nvim-configs.lazy"
require "nvim-configs.pack"
require "nvim-configs.plugin-settings.vim-easy-align"
require "nvim-configs.plugin-settings.comment"
-- For Container COPY/PASTE to work
require "nvim-configs.plugin-settings.nvim-osc52"
