-- Automatically reload the buffer when it gains focus or is entered
vim.cmd('autocmd FocusGained,BufEnter * checktime')

-- Try the below is above not working as expecting
-- this is what I had prior in .vimrc, i.e. 4 sec
-- Check for file changes every 4 seconds (4000 milliseconds) when idle
-- vim.cmd('autocmd CursorHold * checktime 4000')

-- Reference: https://superuser.com/questions/181377/auto-reloading-a-file-in-vim-as-soon-as-it-changes-on-disk
vim.cmd('set autoread')
vim.cmd('autocmd CursorHold * checktime')
