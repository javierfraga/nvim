
-- When editing a file, always jump to the last known cursor position.
-- • `normal! g``: This command jumps the cursor back to the exact position it was before the last jump or change in the buffer.
-- • "\": This refers to the last position in the buffer.
-- • It's a reference to the position where the cursor was the last time you navigated away from that location.

-- Don't do it when the position is invalid or when inside an event handler
-- This ensures that the last position is not beyond the visible lines of the buffer. (happens when dropping a file on gvim).
-- • line("'\"") <= line("$"): This checks if the line number of the last position (") is less than or equal to the line number of the last line in the buffer ($).

-- Also don't do it when the mark is in the first line, that is the default position when opening a file.
-- • line("'\"") > 1: This checks if the line number of the last position (") in the current buffer is greater than 1.
-- • In Vim, line numbers are 1-based, so this ensures that the last position is not at the very beginning of the buffer.

vim.cmd[[
  augroup RememberCursorPos
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  augroup END
]]
