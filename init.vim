set nu
syntax on
filetype plugin indent on

" Activates all plugins from bundle...
execute pathogen#infect()

" Sets the theme for Airline...
let g:airline_theme='cobalt2'

nnoremap ; :

set noswapfile
set nofoldenable

set hlsearch
set incsearch

set tm=5

set mouse=a
set mousehide

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" No arrows... ;-)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
" imap <C-v> <C-r><C-o>+"

highlight Comment cterm=italic
" highlight Structure cterm=bold

let g:deoplete#enable_at_startup = 1
