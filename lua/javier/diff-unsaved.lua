-- DiffUnsavedFile: Allows you to see changes before having to save them (and check via git diff)
vim.cmd('command! DiffUnsavedFile vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis ')
