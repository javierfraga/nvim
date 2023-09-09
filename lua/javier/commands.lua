-- ChangeDirHere: Change vim/nvim change directory to file location
vim.cmd('command! ChangeDirHere cd ' .. vim.fn.expand('%:p:h'))

-- GetDirName: Get path name only of selected file/buffer
vim.cmd('command! GetDirName let @+=fnamemodify(expand("%:p"), ":h") | echo @+')

-- GetFileName: Get file name only of selected file/buffer
vim.cmd('command! GetFileName let @+=expand("%:t") | echo @+')

-- GetFullPath: Get full path of selected file/buffer
vim.cmd('command! GetFullPath let @+=expand("%:p") | echo @+')

-- DiffUnsavedFile: Allows you to see changes before having to save them (and check via git diff)
vim.cmd('command! DiffUnsavedFile vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis ')
