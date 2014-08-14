" put this line first in ~/.vimrc
set nocompatible
filetype indent plugin on
syn on

fun SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  " let g:vim_addon_manager = { your config here see "commented version" example and help
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
                \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons(['github:derekwyatt/vim-scala'], {'auto_install' : 0 })
  call vam#ActivateAddons(['github:tpope/vim-markdown'], {'auto_install' : 0 })
  call vam#ActivateAddons(['github:kchmck/vim-coffee-script'], {'auto_install' : 0 })
  call vam#ActivateAddons(['github:mintplant/vim-literate-coffeescript'], {'auto_install' : 0 })
  call vam#ActivateAddons(['github:altercation/vim-colors-solarized'], {'auto_install' : 0 })
  call vam#ActivateAddons(['github:solarnz/thrift.vim'], {'auto_install' : 0 })
  " Also See "plugins-per-line" below
endfun
call SetupVAM()

set ai
set ts=8
set sw=4
set sts=4
set expandtab
set fencs=utf-8,cp949,ucs-bom
set nocompatible
set backspace=indent,eol,start
set ignorecase
set smartcase

if has("win32")
    set sh=bash
    set shellcmdflag=
    set novisualbell
endif

"au BufNewFile,BufRead *.pl setlocal equalprg=perltidy
au BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.iced set filetype=coffee
"au BufNewFile,BufRead *.js setlocal equalprg=js_beautify\ -s\ 2\ -
au BufNewFile,BufRead *.html,*.htm,*.litcoffee,*.coffee,*.iced,*.ejs,*.rb,*.js setlocal sw=2
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufNewFile,BufRead *.thrift set noexpandtab
au BufNewFile,BufRead *.thrift set sts=8

" au BufWrite * mkview
" au BufRead * silent loadview

filetype on
filetype plugin indent on

com! -nargs=0 A execute "silent !tmux send-keys C-c \"   source(\'cur.R\')\" C-m" | execute 'redraw!'
com! -nargs=0 B execute 'silent !tmux send-keys C-c "   make test" C-m' | execute 'redraw!'

highlight Folded guibg=darkgrey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white

set foldopen=mark,percent,quickfix,search,tag,undo
set clipboard+=unnamed

set bg=dark
colo solarized
let g:solarized_termcolors=256
