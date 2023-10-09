-----------------------------------------
-- Cheatsheet for window/buffer splitting
-----------------------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetSplit
    \   echo 'Split  Full Top    :to[pleft] sp[lit]'
    \ | echo 'Split  Full Bottom :bo[tright] sp[lit] '
    \ | echo 'Vsplit Full Left   :to[pleft]  vs[plit]'
    \ | echo 'Vsplit Full Right  :bo[tright] vs[plit]'
    \ | echo ' '
    \ | echo 'Split  Within Top    :abo[veleft]  sp[lit] '
    \ | echo 'Split  Within Bottom :bel[owright] sp[lit] '
    \ | echo 'Vsplit Within Left   :lefta[bove]  vs[plit]'
    \ | echo 'Vsplit Within Right  :rightb[elow] vs[plit]'
    \ | echo ' '
    \ | echo 'Split  Within Bottom, normal! <Ctrl-w>s'
    \ | echo 'Vsplit Within Right , normal! <Ctrl-w>v'
    \ | echo ' '
    \ | echo 'List All Buffers                    :ls '
    \ | echo 'Specific Buffer Split Within Top    :sb[uffer][N] '
    \ | echo 'Specific Buffer Split Within Bottom :vert[ical] sb[uffer][N] '
    \ | echo ' '
    \ | echo 'Open Files with Horizontal Split $nvim -o file1.txt file2.txt'
    \ | echo 'Open Files with Vertical Split   $nvim -O file1.txt file2.txt'
]])

--------------------------------
-- Cheatsheet for files
--------------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetFiles
    \   echo 'Creates new file and saves it               :sav[eas] new_file_name'
    \ | echo 'Rename file with saveas first, del old file :!rm % | bd[elete]'
    \ | echo 'Creates new empty file                      :e[dit] new_file_name'
    \ | echo 'Open Multiple Files                         :n[ext] *.txt'
    \ | echo 'Return to prev file                         :e # OR CTRL+6'
]])

--------------------------
-- Delete Multiple Buffers
--------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetDeleteBuffers
    \   echo '1. Enter buffers with regex         :bd *.xml'
    \ | echo '2. Expand the regex                 :<Ctrl-a>'
    \ | echo '3. Enter Commandline mode to refine :<Ctrl-f>'
    \ | echo 'Use buffer numbers, e.g.            :bd 3 5'
]])

---------------------
-- Make/Open Sessions
---------------------

vim.cmd([[
  command! -nargs=0 CheatsheetMksession
    \   echo 'Make a Session                  :mks[ession]! mks.session'
    \ | echo 'Open Sesssion from Console      $nvim -S mks.session'
    \ | echo 'Open/Restore Sesssion from nvim :so[urce] mks.session'
]])

-----------------------------------
-- Search and Replace Multiple File
-----------------------------------
-- reference: http://vimcasts.org/episodes/project-wide-find-and-replace/
vim.cmd([[
  command! -nargs=0 CheatsheetSearchReplaceMultiFile
    \   echo '1. Open files of interest recursively                      :args **/*.txt'
    \ | echo '   OR'
    \ | echo '1. Open files of interest with string                      :grep! "\<pattern\>" . -r'
    \ | echo '1a.(Optional) Open files in buffers                        :cfdo e %'
    \ | echo '   NEXT'
    \ | echo '2. Vimgrep isolate matching files w string, e.g.(note \zs) :vimgrep /Vimcasts\.\zscom/g ##'
    \ | echo '   Note, this represents entire args                       :##'
    \ | echo '   OR'
    \ | echo '2. Vimgrep isolate matching files w string, e.g.(note \zs) :vimgrep Vimcasts\.\zscom **/*.txt'
    \ | echo '   OR'
    \ | echo '2. Use only open buffers                                   :bd *'
    \ | echo '2a.Expand buffers                                          :<Ctrl-a>'
    \ | echo '2b.Enter Commandline mode                                  :<Ctrl-f>'
    \ | echo '2c.Change command from bd to                               :vimgrep Vimcasts\.\zscom 1.txt 2.txt'
    \ | echo '   Note, can use bufdo like this                           :bufdo vimgrepadd AND % instead of ##'
    \ | echo '   Note, // shortcut for word from * or #, e.g.            :bufdo vimgrepadd // %'
    \ | echo '   NEXT'
    \ | echo '3. Open Quickfix List, just to checkout                    :cope[n]'
    \ | echo '4. Make changes from Quickfix List only, e.g.              :cdo %s/Vimcasts\.\zscom/org/ge'
    \ | echo '5. Write Quickfix List only                                :cdo update'
    \ | echo '6. Clear Quickfix                                          :cex[pr] []'
    \ | echo '7. Close Quickfix                                          :ccl[ose]'
]])

----------------------------
-- Search and Replace Basics
----------------------------

vim.cmd([[
  command! -nargs=0 CheatsheetSearchReplaceBasics
    \   echo 'Search Replace Current Line Only                   :s/foo/bar/g'
    \ | echo 'Search Replace All Line                            :%s/foo/bar/g'
    \ | echo 'Search Replace Confirm                             :%s/foo/bar/gc'
    \ | echo 'Default Case Sensitive, usually changed in options :set noignorecase'
    \ | echo 'Search Replace Case Insensitive                    :%s/foo/bar/gci'
    \ | echo 'Search Replace Case Sensitive                      :%s/foo/bar/gcI'
    \ | echo 'Search Replace Case Insensitive                    :%s/foo\c/bar/gc'
    \ | echo 'Search Replace Case Sensitive                      :%s/foo\C/bar/gc'
    \ | echo 'Search Replace Reuse Substrings, removes _         :%s/\(\d\)_\(\d\)/\1\2/g'
    \ | echo 'Search Replace Entire Word w Substring Match       :%s/\<\w*substr\w*\>/newword/g'
    \ | echo 'Search Full Word Replace only on postfix          :%s/Vimcasts\.\zscom/org/g'
    \ | echo 'Delete all empty lines (selection area too)        :g/^$/d'
]])

---------
-- Search
---------

vim.cmd([[
  command! -nargs=0 CheatsheetSearch
    \   echo 'Search multiple words :/\vword1|word2|word3'
    \ | echo 'Search multiple words :/word1\|word2\|word3'
]])

----------
-- Vimdiff
----------

vim.cmd([[
  command! -nargs=0 CheatsheetVimdiff
    \   echo 'Open All Folds,   normal! zr'
    \ | echo 'Close All Folds,  normal! zm'
    \ | echo 'Open Single Fold, normal! zo'
    \ | echo 'Close Single Fold,normal! zc'
    \ | echo 'Next Diff,        normal! ]c'
    \ | echo 'Prev Diff,        normal! [c'
    \ | echo 'Diff Obtain,      normal! do'
    \ | echo 'Diff Put,         normal! dp'
    \ | echo 'Rescan for diffs  :dif[fupdate]'
]])

-------------
-- Word Count
-------------

vim.cmd([[
  command! -nargs=0 CheatsheetWordCount
    \   echo 'Copy Full Word Matches in register /    normal! *, OR, normal! #'
    \ | echo 'Copy Partial Word Matches in register / normal! g*, OR, normal! g#'
    \ | echo 'Count # of Occurrences                  :%s,///gn'
]])

--------------
-- Spell Check
--------------

vim.cmd([[
  command! -nargs=0 CheatsheetSpellCheck
    \   echo 'Set Spell Check      :set spell'
    \ | echo 'Turn off Spell Check :set nospell'
    \ | echo 'Spell Check Word,    normal! z='
]])

---------------
-- Move Windows
---------------

vim.cmd([[
  command! -nargs=0 CheatsheetWindows
    \   echo 'Cycle Thru Windows,                            normal! <Ctrl-w>w'
    \ | echo 'Swap Partial Windows either Left or Bottom,    normal! <Ctrl-w>x'
    \ | echo 'Select TopLeft-Most Buffer/Window,             normal! <Ctrl-w>t'
    \ | echo 'Select BottomRight-Most Buffer/Window,         normal! <Ctrl-w>b'
    \ | echo 'Rotate Partial Windows Clockwise,              normal! <Ctrl-w>r'
    \ | echo 'Rotate Partial Windows Counter Clockwise,      normal! <Ctrl-w>R'
    \ | echo 'Move Current Buffer/Window to new Full Window, normal! <Ctrl-w>[H|J|K|L]'
]])

---------
-- Stdout
---------

vim.cmd([[
  command! -nargs=0 CheatsheetStdout
    \   echo '1. Redirect stdout                                    :redir @a'
    \ | echo '2. Execute the command you want to capture the output :g/example/p'
    \ | echo '3. Stop capturing                                     :redir END'
    \ | echo '4. Paste register @a in any buffer                    normal! <Ctrl-R> a'
]])

-----------
-- Commands
-----------

vim.cmd([[
  command! -nargs=0 CheatsheetCommands
    \   echo 'Command Line Window, help cmdline-window q: OR :<Ctrl-f>'
    \ | echo 'Goto some byte # in file                          :goto 21490 '
    \ | echo 'Keep cursor in middle of screen on scroll         :set so=999'
    \ | echo 'Reset cursor default behavior on scroll           :set so=0'
    \ | echo 'Set Relative number line #s                      :rnu'
    \ | echo 'Unset Relative number line #s                    :nornu OR :rnu!'
    \ | echo 'Enter range from another file after line 100      :100r! sed -n 147,227p /path/foo.c'
    \ | echo 'Enter individual from another file after line 100 :100r! sed -n 147p,227p /path/foo.c'
    \ | echo 'Enter stupid ^M character from Windows            normal! <Ctrl-v> <Ctrl-m>'
]])
