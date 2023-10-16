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

----------
-- Folding
----------
vim.cmd([[
  command! -nargs=0 CheatsheetFolding
    \   echo 'creates a fold from the cursor down # lines normal! zf#j      '
    \ | echo 'creates a fold from the cursor to string    normal! zf/string '
    \ | echo 'creates a visual select fold                normal! v{move}zf '
    \ | echo 'creates a fold from cursor to mark a        normal! zf'a      '
    \ | echo 'opens a fold at the cursor.                 normal! zo        '
    \ | echo 'opens all folds at the cursor.              normal! zO        '
    \ | echo 'Toggles a fold at the cursor.               normal! za        '
    \ | echo 'closes a fold at the cursor.                normal! zc        '
    \ | echo 'closes all open folds.                      normal! zM        '
    \ | echo 'deletes the fold at the cursor.             normal! zd        '
    \ | echo 'deletes all folds.                          normal! zE        '
    \ | echo 'moves the cursor to the next fold.          normal! zj        '
    \ | echo 'moves the cursor to the previous fold.      normal! zk        '
    \ | echo 'increases the foldlevel by one.             normal! zm        '
    \ | echo 'decreases the foldlevel by one.             normal! zr        '
    \ | echo 'all folds open.                             normal! zR        '
    \ | echo 'move to start of open fold.                 normal! [z        '
    \ | echo 'move to end of open fold.                   normal! ]z        '
]])

--------
-- Marks
--------
vim.cmd([[
  command! -nargs=0 CheatsheetMarks
    \   echo "Set a marker a at cursor position                             normal! ma        "
    \ | echo "Set a marker b at current position                            normal! mb        "
    \ | echo "Move cursor to exact position of the marker you set with ma   normal! `a        "
    \ | echo "Move cursor to the first character of the line marked with ma normal! 'a        "
    \ | echo "Delete from current line to line of mark a                    normal! d'a       "
    \ | echo "Delete from current cursor position to position of mark a     normal! d`a       "
    \ | echo "Change text from current line to line of mark a               normal! c'a       "
    \ | echo "Yank text to unnamed buffer from cursor to position of mark a normal! y`a       "
    \ | echo "List all the current marks                                    :marks 	  "
    \ | echo "List marks a, b                                               :marks ab "
    \ | echo "Search and replace test with foo between markers a and        :'a,'bs/test/foo/g"
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
    \ | echo 'Edit a remote file via scp: vim scp://balasundaramm@mgmt-bst:22/~/automation/test-file.txt'
]])

-----------------------
-- Miscellaneous Normal
-----------------------
vim.cmd([[
  command! -nargs=0 CheatsheetMiscNormal
    \   echo 'Command Line Window, help cmdline-window                   normal! q: OR :<Ctrl-f>'
    \ | echo 'Enter stupid ^M character from Windows                     normal! <Ctrl-v> <Ctrl-m>'
    \ | echo 'ZZ: a faster way to do :wq                                 normal! ZZ'
    \ | echo 'Toggle case of all characters to end of line.              normal! g~$'
    \ | echo 'Toggle case of the current line (same as V~).              normal! g~~'
    \ | echo 'switch the current line to upper case                      normal! gUU'
    \ | echo 'Increment Numners Sequentially                             normal! g<Ctrl-a>'
    \ | echo 'Repeat last f, t, F, or T command                          normal! ;'
    \ | echo 'Repeat last f, t, F, or T command in opposite direction    normal! ,'
    \ | echo 'Shift lines to left                                        normal! <<'
    \ | echo 'Shift lines to right                                       normal! >>'
    \ | echo 'Move to beginning of previous sentence.                    normal! ('
    \ | echo 'Move to beginning of previous paragraph.                   normal! {'
    \ | echo 'Move forward to the first character on the next line       normal! +'
    \ | echo 'Move backwards to the first character on the previous line normal! -'
    \ | echo 'Move up by half a page                                     normal! CTRL+u'
    \ | echo 'Move down by half a page                                   normal! CTRL+d'
    \ | echo 'Move up by a page                                          normal! CTRL+b'
    \ | echo 'Move down by a page                                        normal! CTRL+f'
    \ | echo 'Search forward for word under cursor                       normal! *     '
    \ | echo 'Search backwards for word under cursor                     normal! #     '
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
    \   echo 'Open All Folds,               normal! zr'
    \ | echo 'Close All Folds,              normal! zm'
    \ | echo 'Open Single Fold,             normal! zo'
    \ | echo 'Close Single Fold,            normal! zc'
    \ | echo 'Next Diff,                    normal! ]c'
    \ | echo 'Prev Diff,                    normal! [c'
    \ | echo 'Diff Obtain,                  normal! do'
    \ | echo 'Diff Put,                     normal! dp'
    \ | echo 'Rescan for diffs              :dif[fupdate]'
    \ | echo 'diff between 2 vsplit windows :windo diffthis'
    \ | echo 'diff current window with file :diffs, diffsplit {filename}'
    \ | echo 'turns off diff selection      :diffoff'
]])

---------------
-- Windows Move
---------------
vim.cmd([[
  command! -nargs=0 CheatsheetWindowsMove
    \   echo 'Cycle Thru Windows,                            normal! <Ctrl-w>w'
    \ | echo 'Swap Partial Windows either Left or Bottom,    normal! <Ctrl-w>x'
    \ | echo 'Select TopLeft-Most Buffer/Window,             normal! <Ctrl-w>t'
    \ | echo 'Select BottomRight-Most Buffer/Window,         normal! <Ctrl-w>b'
    \ | echo 'Rotate Partial Windows Clockwise,              normal! <Ctrl-w>r'
    \ | echo 'Rotate Partial Windows Counter Clockwise,      normal! <Ctrl-w>R'
    \ | echo 'Move Current Buffer/Window to new Full Window, normal! <Ctrl-w>[H|J|K|L]'
]])

-----------------
-- Windows Resize
-----------------
vim.cmd([[
  command! -nargs=0 CheatsheetWindowsResize
    \   echo 'Max out the height of the current split                     normal!  CTRL+w _'
    \ | echo 'Max out the width of the current split                      normal!  CTRL+w |'
    \ | echo 'Normalize all split sizes                                   normal!  CTRL+w ='
    \ | echo 'Incrementally increase the window to the right. CTRL-w 20 > normal!  CTRL+w >'
    \ | echo 'Incrementally increase the window to the left. CTRL-w 20 <  normal!  CTRL+w <'
    \ | echo 'Incrementally decrease the window's height. CTRL-w 10 -     normal!  CTRL+w -'
    \ | echo 'Incrementally increase the window's height. CTRL-w 10 +     normal!  CTRL+w +'
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

