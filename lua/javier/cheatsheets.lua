----------
-- Buffers
----------
vim.cmd([[
  command! -nargs=0 CheatsheetBuffers
    \   echo 'list / show available buffers                         :ls (or :buffers)  '
    \ | echo 'Edit a file in a new buffer                           :e filename        '
    \ | echo 'go to next buffer                                     :bnext (or :bn)    '
    \ | echo 'go to previous buffer                                 :bprev (of :bp)    '
    \ | echo 'unload a buffer (close a file), keeps in memory       :bdelete (or :bd)  '
    \ | echo 'unload a buffer and deletes it, deletes in memory     :bwipeout (or :bw) '
    \ | echo 'The number of the buffer to open                      :b [N]             '
    \ | echo 'opens all available buffers in horizontal split       :ball              '
    \ | echo 'opens all available buffers in vertical split         :vertical ball     '
    \ | echo 'close the buffer window                               :q                 '
    \ | echo 'reads a file from the path to the buffer              :r <file_path>     '
    \ | echo 'reads the output of the command into buffer           :r !<command>      '
    \ | echo 'Enter range from another file after line 100          :100r! sed -n 147,227p /path/foo.c'
    \ | echo 'Enter lines from another file after line 100          :100r! sed -n 147p,227p /path/foo.c'
    \ | echo 'reads the output of the command (eg: cat) into buffer :.! cat <file_path>'
    \ | echo 'Creates new file and saves it                         :sav[eas] new_file_name'
    \ | echo 'Rename file with saveas first, del old file           :!rm % | bd[elete]'
    \ | echo 'Creates new empty file                                :e[dit] new_file_name'
    \ | echo 'Open Multiple Files                                   :n[ext] *.txt'
    \ | echo 'Return to prev file                                   :e # OR CTRL+6'
    \ | echo 'BufOnly                                               normal! CTRL+W o      '
]])

--------------------------
-- Delete Multiple Buffers
--------------------------
vim.cmd([[
  command! -nargs=0 CheatsheetBuffersDelete
    \   echo '1. Enter buffers with regex         :bd *.xml'
    \ | echo '2. Expand the regex                 :<Ctrl-a>'
    \ | echo '3. Enter Commandline mode to refine :<Ctrl-f>'
    \ | echo 'Use buffer numbers, e.g.            :bd 3 5'
]])

-------------------------
-- Miscellaneous Commands
-------------------------
vim.cmd([[
  command! -nargs=0 CheatsheetMiscCommands
    \ | echo '* or # search without the \<\>                    :g* OR g#'
    \ | echo 'Goto some byte # in file                          :goto 21490 '
    \ | echo 'Keep cursor in middle of screen on scroll         :set so=999'
    \ | echo 'Reset cursor default behavior on scroll           :set so=0'
    \ | echo 'Set Relative number line #s                       :rnu'
    \ | echo 'Unset Relative number line #s                     :nornu OR :rnu!'
]])

-----------------------
-- Miscellaneous Normal
-----------------------
vim.cmd([[
  command! -nargs=0 CheatsheetMiscNormal
    \   echo 'Command Line Window, help cmdline-window          normal! q: OR :<Ctrl-f>'
    \ | echo 'Enter stupid ^M character from Windows            normal! <Ctrl-v> <Ctrl-m>'
    \ | echo 'ZZ: a faster way to do :wq                        normal! ZZ'
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

---------------
-- Move Windows
---------------
vim.cmd([[
  command! -nargs=0 CheatsheetMoveWindows
    \   echo 'Cycle Thru Windows,                            normal! <Ctrl-w>w'
    \ | echo 'Swap Partial Windows either Left or Bottom,    normal! <Ctrl-w>x'
    \ | echo 'Select TopLeft-Most Buffer/Window,             normal! <Ctrl-w>t'
    \ | echo 'Select BottomRight-Most Buffer/Window,         normal! <Ctrl-w>b'
    \ | echo 'Rotate Partial Windows Clockwise,              normal! <Ctrl-w>r'
    \ | echo 'Rotate Partial Windows Counter Clockwise,      normal! <Ctrl-w>R'
    \ | echo 'Move Current Buffer/Window to new Full Window, normal! <Ctrl-w>[H|J|K|L]'
]])

---------------------
-- Quickfix Mode Grep
---------------------
vim.cmd([[
  command! -nargs=0 CheatsheetQuickfix
    \   echo 'Single File'
    \ | echo '1. Vimgrep isolate matching files w string, e.g.(note \zs) :vim[grep] regex-string %'
    \ | echo ' '
    \ | echo 'Multi File - Args method'
    \ | echo '1. Open files of interest recursively                      :args **/*.txt'
    \ | echo '2. Vimgrep isolate matching files w string, e.g.(note \zs) :vim[grep] Vimcasts\.\zscom/g ##'
    \ | echo '   Note, this represents entire args                       :##'
    \ | echo '   OR'
    \ | echo '2. Vimgrep isolate matching files w string, e.g.(note \zs) :vim[grep] Vimcasts\.\zscom **/*.txt'
    \ | echo ' '
    \ | echo 'Multi File - Buffer Method 1'
    \ | echo '1. Use only open buffers                                   :bd *'
    \ | echo '2. Expand buffers                                          :<Ctrl-a>'
    \ | echo '   (Optional) Open files in buffers                        :cfdo e %'
    \ | echo '3. Enter Commandline mode                                  :<Ctrl-f>'
    \ | echo '4. Change command from bd to                               :vim[grep] Vimcasts\.\zscom 1.txt 2.txt'
    \ | echo ' '
    \ | echo 'Multi File - Buffer Method 2, vimgrepadd'
    \ | echo '1. Note, // shortcut for word from * or #, e.g.            :bufdo vimgrepadd // %'
    \ | echo ' '
    \ | echo 'Multi File - Grep method (similar to Args)'
    \ | echo '1. Open files of interest with string                      :grep! "\<pattern\>" . -r'
    \ | echo ''
    \ | echo 'Quickfix modifications'
    \ | echo '1. Open Quickfix List, just to checkout                    :cope[n]'
    \ | echo '   (Optional) Resize the Quickfix                          :resize <number>'
    \ | echo '2. Make changes from each Quickfix List item, e.g.         :cdo s/Vimcasts\.\zscom/org/ge'
    \ | echo '3. Make changes each file once Quickfix List, e.g.         :cfdo %s/Vimcasts\.\zscom/org/ge'
    \ | echo '4. Write Quickfix List only                                :cdo update'
    \ | echo '5. Clear Quickfix                                          :cex[pr] []'
    \ | echo '6. Close Quickfix                                          :ccl[ose]'
]])

----------------
-- Stdout, Redir
----------------
vim.cmd([[
  command! -nargs=0 CheatsheetRedirStdout
    \   echo '1. Redirect stdout                                    :redir @a'
    \ | echo '2. Execute the command you want to capture the output :g/example/p'
    \ | echo '3. Stop capturing                                     :redir END'
    \ | echo '4. Paste register @a in any buffer                    normal! <Ctrl-R> a'
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
    \ | echo 'Search Full Word Replace only on postfix           :%s/Vimcasts\.\zscom/org/g'
    \ | echo 'Delete all empty lines (selection area too)        :g/^$/d'
    \ | echo 'Search multiple words                              :/\vword1|word2|word3'
    \ | echo 'Search multiple words                              :/word1\|word2\|word3'
]])

-----------------------------------
-- Search and Replace with Quickfix
-----------------------------------
-- reference: http://vimcasts.org/episodes/project-wide-find-and-replace/
vim.cmd([[
  command! -nargs=0 CheatsheetSearchReplaceQuickfix
    \   echo '1. Open files of interest recursively                      :args **/*.txt'
    \ | echo '2. Vimgrep isolate matching files w string, e.g.(note \zs) :vimgrep Vimcasts\.\zscom/g ##'
    \ | echo '   Note, this represents entire args                       :##'
    \ | echo '3. Open Quickfix List, just to checkout                    :cope[n]'
    \ | echo '4. Make changes from Quickfix List only, e.g.              :cdo s/Vimcasts\.\zscom/org/ge'
    \ | echo '5. Write Quickfix List only                                :cdo update'
    \ | echo '6. Clear Quickfix                                          :cex[pr] []'
    \ | echo '7. Close Quickfix                                          :ccl[ose]'
]])

--------------
-- Spell Check
--------------
vim.cmd([[
  command! -nargs=0 CheatsheetSpellCheck
    \   echo 'Set Spell Check                      :set spell'
    \ | echo 'Turn off Spell Check                 :set nospell'
    \ | echo 'Spell Check Word,                    normal! z='
    \ | echo 'Go to next misspelled word           normal! ]s'
    \ | echo 'Go to last misspelled word           normal! [s'
    \ | echo 'Mark a misspelled word as correct    normal! zg'
    \ | echo 'Mark a good word as misspelled       normal! zw'
]])


-----------------------------------------
-- Cheatsheet for window/buffer splitting
-----------------------------------------
vim.cmd([[
  command! -nargs=0 CheatsheetSplit
    \   echo 'Split  Within Bottom, normal! <Ctrl-w>s'
    \ | echo 'Vsplit Within Right , normal! <Ctrl-w>v'
    \ | echo ' '
    \ | echo 'Split  Full Top    :to[pleft] sp[lit]'
    \ | echo 'Split  Full Bottom :bo[tright] sp[lit] '
    \ | echo 'Vsplit Full Left   :to[pleft]  vs[plit]'
    \ | echo 'Vsplit Full Right  :bo[tright] vs[plit]'
    \ | echo ' '
    \ | echo 'Split  Within Top    :abo[veleft]  sp[lit] '
    \ | echo 'Split  Within Bottom :bel[owright] sp[lit] '
    \ | echo 'Vsplit Within Left   :lefta[bove]  vs[plit]'
    \ | echo 'Vsplit Within Right  :rightb[elow] vs[plit]'
    \ | echo ' '
    \ | echo 'List All Buffers                    :ls '
    \ | echo 'Specific Buffer Split Within Top    :sb[uffer][N] '
    \ | echo 'Specific Buffer Split Within Bottom :vert[ical] sb[uffer][N] '
    \ | echo ' '
    \ | echo 'Open Files with Horizontal Split $nvim -o file1.txt file2.txt'
    \ | echo 'Open Files with Vertical Split   $nvim -O file1.txt file2.txt'
]])

-------
-- Tabs
-------
vim.cmd([[
  command! -nargs=0 CheatsheetTabs
    \   echo 'opens the file in newtab                                      :tabe filename'
    \ | echo 'open an empty tab                                             :tabe new     '
    \ | echo 'list opened tabs                                              :tabs         '
    \ | echo 'close the active tab                                          :tabc         '
    \ | echo 'Go to next tab or previous tab                                :tabn and tabp'
    \ | echo 'Go to the first available tab                                 :tabfirst     '
    \ | echo 'Go to the last available tab                                  :tablast      '
    \ | echo 'help for tabs                                                 :help tabpage '
    \ | echo 'open all txt files in tabs                                    vim -p *.txt  '
    \ | echo 'go to next tab                                                normal! gt            '
    \ | echo 'go to previous tab                                            normal! gT            '
    \ | echo 'go to tab in position i                                       normal! {i}gt         '
    \ | echo 'Break out current window into a new tabview                   normal! CTRL+W T      '
    \ | echo 'Close every window in the current tabview but the current one normal! CTRL+W o      '
    \ | echo 'create a new window in the current tabview                    normal! CTRL+W n      '
    \ | echo 'Close current window in the current tabview                   normal! CTRL+W c      '
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
    \ | echo 'Count # of Occurrences                  :%s///gn OR %s,,,gn'
]])

