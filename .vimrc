syn on
set ai
colo default
set ts=8
set sw=4
set sts=4
set expandtab
set fencs=utf-8,cp949
set nocompatible
filetype on
filetype plugin indent on

au BufRead *.pl setlocal equalprg=perltidy
au BufRead *.js setlocal sw=2
au BufRead *.js setlocal equalprg=js-beautify\ -
au BufRead *.rb setlocal sw=2

com! -nargs=0 A execute 'silent !tmux send-keys C-c "bundle exec gollum ../icpc" C-m' | execute 'redraw!'
com! -nargs=0 B execute 'silent !tmux send-keys C-c' | execute 'redraw!'
