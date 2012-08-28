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
filetype on
filetype plugin indent on

au BufNewFile,BufRead *.pl setlocal equalprg=perltidy
au BufNewFile,BufRead *.js setlocal sw=2
"au BufNewFile,BufRead *.js setlocal equalprg=js_beautify\ -s\ 2\ -
au BufNewFile,BufRead *.rb setlocal sw=2
au BufNewFile,BufRead *.ejs setlocal sw=2
au BufNewFile,BufRead *.html setlocal sw=2
au BufNewFile,BufRead *.coffee setlocal sw=2

com! -nargs=0 A execute 'silent !tmux send-keys C-c "   mocha test_service_sachal.js" C-m' | execute 'redraw!'
com! -nargs=0 B execute 'silent !tmux send-keys C-c "   ./run" C-m' | execute 'redraw!'
