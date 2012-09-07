syn on
set ai
set bg=dark
colo default
set ts=8
set sw=4
set sts=4
set expandtab
set fencs=utf-8,cp949
set nocompatible

au BufNewFile,BufRead *.pl setlocal equalprg=perltidy
au BufNewFile,BufRead *.js setlocal sw=2
au BufNewFile,BufRead *.json set filetype=json
"au BufNewFile,BufRead *.js setlocal equalprg=js_beautify\ -s\ 2\ -
au BufNewFile,BufRead *.rb setlocal sw=2
au BufNewFile,BufRead *.ejs setlocal sw=2
au BufNewFile,BufRead *.html *htm setlocal sw=2
au BufNewFile,BufRead *.coffee setlocal sw=2

filetype on
filetype plugin indent on

com! -nargs=0 A execute '!jslint --indent 2 --nomen %'
com! -nargs=0 B execute 'silent !tmux send-keys C-c "   ./run" C-m' | execute 'redraw!'
