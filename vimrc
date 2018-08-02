" line numbers
set number
set nocompatible
set ruler

" syntax highlighting
syntax on
filetype indent plugin on

" python tabs
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" yy, d and p works with clipboard
set clipboard=unnamed
set backspace=eol,start,indent

" text wrapping 
" set mouse=v
let @c='^i# '
let @d='^xx'

" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

" Paste works correctly 
set pastetoggle=<F3>
