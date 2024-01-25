
-----------------------------
-- Whitespace highlighting --
-----------------------------
-- Define BadWhitespace highlight before using it in a match
vim.cmd([[highlight BadWhitespace ctermbg=red guibg=darkred]])

-- Define the autocmd to match bad whitespace in specified file types
vim.cmd([[
augroup BadWhitespaceMatch
  au!
  au BufRead,BufNewFile * match BadWhitespace /\s\+$/
augroup END
]])

------------------------
-- Whitespace removal --
------------------------
-- White space removal from file
function TrimWhitespace()
    local save = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(save)
end

vim.cmd([[command! WhitespaceTrimRemove call v:lua.TrimWhitespace()]])
