" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
" I like using H and L for beginning/end of line
nmap H ^
nmap L $
" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward

""""""""""""""""""

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Pane Relief: https://github.com/pjeby/pane-relief
exmap tabnext obcommand pane-relief:go-next
nmap gt :tabnext
exmap tabprev obcommand pane-relief:go-prev
nmap gT :tabprev
" Same as CMD+\
nmap g\ :tabnext

""""""""""""""""""

" exmap focusRight obcommand editor:focus-right
" nmap <C-w>l :focusRight
"
" exmap focusLeft obcommand editor:focus-left
" nmap <C-w>h :focusLeft
"
" exmap focusTop obcommand editor:focus-top
" nmap <C-w>k :focusTop
"
" exmap focusBottom obcommand editor:focus-bottom
" nmap <C-w>j :focusBottom
"
" exmap splitVertical obcommand workspace:split-vertical
" nmap <C-w>v :splitVertical
"
" exmap splitHorizontal obcommand workspace:split-horizontal
" nmap <C-w>s :splitHorizontal

""""""""""""""""""

exmap openlink obcommand editor:open-link-in-new-leaf
nmap go :openlink
nmap gd :openlink

" [g]oto [f]ile (= Follow Link under cursor)
exmap followLinkUnderCursor obcommand editor:follow-link
nmap gf :followLinkUnderCursor

" g; go to last change - https://vimhelp.org/motion.txt.html#g%3B
nmap gh u<C-r>

" mapping next/previous heading
exmap nextHeading jsfile .obsidian.markdown-helper.js {jumpHeading(true)}
exmap prevHeading jsfile .obsidian.markdown-helper.js {jumpHeading(false)}
nmap g] :nextHeading
nmap g[ :prevHeading
