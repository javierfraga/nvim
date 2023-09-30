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
    \ | echo " "
    \ | echo "List All Buffers                    :ls "
    \ | echo "Specific Buffer Split Within Top    :sb[uffer][N] "
    \ | echo "Specific Buffer Split Within Bottom :vert[ical] sb[uffer][N] "
    \ | echo " "
    \ | echo "Open Files with Horizontal Split $nvim -o file1.txt file2.txt"
    \ | echo "Open Files with Vertical Split   $nvim -O file1.txt file2.txt"
]])

--------------------------------
-- Cheatsheet for files
--------------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetFiles
    \   echo "Creates new file and saves it     :sav[eas] new_file_name"
    \ | echo "Rename file, saveas, del old file :!rm % | bd[elete]"
    \ | echo "Creates new empty file            :e[dit] new_file_name"
    \ | echo "Open Multiple Files               :n[ext] *.txt"
    \ | echo "Return to prev file               :e # OR CTRL+6"
]])

---------------------
-- Make/Open Sessions
---------------------

vim.cmd([[
  command! -nargs=0 CheatsheetMksession
    \   echo "Make a Session                  :mks[ession]! mks.session"
    \ | echo "Open Sesssion from Console      $nvim -S mks.session"
    \ | echo "Open/Restore Sesssion from nvim :so[urce] mks.session"
]])

---------------------
-- Search and Replace
---------------------

vim.cmd([[
  command! -nargs=0 CheatsheetSearchReplace
    \   echo "1. Open files of interest recursively                      :args **/*.txt"
    \ | echo "   OR"
    \ | echo '1. Open files of interest with string                      :grep! "\<pattern\>" . -r'
    \ | echo '1a.Open files in buffers                                   :cfdo e %'
    \ | echo "   NEXT"
    \ | echo "2. Vimgrep isolate matching files w string, e.g.(note \\zs) :vimgrep /Vimcasts\.\zscom/g ##"
    \ | echo "   Note, this represents entire args                       :##"
    \ | echo "3. Open Quickfix List, just to checkout                    :cope[n]"
    \ | echo "4. Make changes from Quickfix List only, e.g.              :cdo %s/Vimcasts\.\zscom/org/ge"
    \ | echo "5. Write Quickfix List only                                :cdo update"
]])
