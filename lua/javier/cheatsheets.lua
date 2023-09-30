-----------------------------------------
-- Cheatsheet for window/buffer splitting
-----------------------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetSplit
    \   echo "Split  Full Top    :to[pleft] sp[lit]"
    \ | echo "Split  Full Bottom :bo[tright] sp[lit] "
    \ | echo "Vsplit Full Left   :to[pleft]  vs[plit]"
    \ | echo "Vsplit Full Right  :bo[tright] vs[plit]"
    \ | echo " "
    \ | echo "Split  Within Top    :abo[veleft]  sp[lit] "
    \ | echo "Split  Within Bottom :bel[owright] sp[lit] "
    \ | echo "Vsplit Within Left   :lefta[bove]  vs[plit]"
    \ | echo "Vsplit Within Right  :rightb[elow] vs[plit]"
]])

--------------------------------
-- Cheatsheet for files
--------------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetFiles
    \   echo "Creates new file and saves it     :sav[eas] new_file_name"
    \ | echo "Rename file, saveas, del old file :!rm % | bd[elete]"
    \ | echo "Creates new empty file            :e[dit] new_file_name"
    \ | echo "Return to prev file               :e # OR CTRL+6"
]])

