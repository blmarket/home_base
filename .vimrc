syn on
set ai
set bg=dark
colo desert
set ts=8
set sw=4
set sts=4
set expandtab
set fencs=utf-8,cp949,ucs-bom
set nocompatible

if has("win32")
    set sh=bash
    set shellcmdflag=
    set novisualbell
endif

"au BufNewFile,BufRead *.pl setlocal equalprg=perltidy
au BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.ejs set filetype=html
"au BufNewFile,BufRead *.js setlocal equalprg=js_beautify\ -s\ 2\ -
au BufNewFile,BufRead *.html,*.htm,*.coffee,*.ejs,*.rb,*.js setlocal sw=2

au BufWrite * mkview
au BufRead * silent loadview

filetype on
filetype plugin indent on

com! -nargs=0 A execute '!jslint --indent 2 --nomen %'
com! -nargs=0 B execute 'silent !tmux send-keys C-c "   ./run" C-m' | execute 'redraw!'

highlight Folded guibg=darkgrey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white

set foldopen=mark,percent,quickfix,search,tag,undo
"default option
"set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
