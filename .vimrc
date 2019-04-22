
" Auto-indent new lines
set ai

" Shift-width and tabstops to 2
set sw=2
set tabstop=2

" Expand tabs to spaces
set expandtab

" Syntax coloring
syntax on
colo desert

" 2 columns left margin
set foldcolumn=2

" Highlight all other occurrences of the word underneath the cursor
autocmd CursorMoved * exe printf('match Folded /\V\<%s\>/', escape(expand('<cword>'), '/\'))
