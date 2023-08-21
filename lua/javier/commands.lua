-- ChangeDirHere: Change vim/nvim change directory to file location
vim.cmd('command! ChangeDirHere cd ' .. vim.fn.expand('%:p:h'))

-- GetDirName: Get path name only of selected file/buffer
vim.cmd('command! GetDirName let @+=fnamemodify(expand("%:p"), ":h") | echo @+')

-- GetFileName: Get file name only of selected file/buffer
vim.cmd('command! GetFileName let @+=expand("%:t") | echo @+')

-- GetFullPath: Get full path of selected file/buffer
vim.cmd('command! GetFullPath let @+=expand("%:p") | echo @+')
