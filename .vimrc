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

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'derekwyatt/vim-scala'
" "
" " original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

"au BufNewFile,BufRead *.pl setlocal equalprg=perltidy
au BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.ejs set filetype=html
"au BufNewFile,BufRead *.js setlocal equalprg=js_beautify\ -s\ 2\ -
au BufNewFile,BufRead *.html,*.htm,*.coffee,*.ejs,*.rb,*.js setlocal sw=2
au BufNewFile,BufRead *.cpp set syntax=cpp11

" au BufWrite * mkview
" au BufRead * silent loadview

filetype on
filetype plugin indent on

com! -nargs=0 A execute "silent !tmux send-keys C-c \"   source(\'cur.R\')\" C-m" | execute 'redraw!'
com! -nargs=0 B execute 'silent !tmux send-keys C-c "   make test" C-m' | execute 'redraw!'

highlight Folded guibg=darkgrey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white

set foldopen=mark,percent,quickfix,search,tag,undo
"default option
"set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
"
set clipboard+=unnamed
