call plug#begin('~/.local/share/nvim/plugged')

" Load my plugins
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim'
Plug 'neovimhaskell/haskell-vim'
Plug 'eagletmt/neco-ghc'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ElmCast/elm-vim'
Plug 'spwhitt/vim-nix'

" Initialize plugin system
call plug#end()

set nu
syntax on
filetype plugin indent on
filetype plugin on

set encoding=utf8

" Sets the theme for Airline...
let g:airline_theme='cool'
let g:airline_powerline_fonts=1

nnoremap ; :

set noswapfile
set nofoldenable

set hlsearch
set incsearch

set tm=5

set mouse=a
set mousehide

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Work with system clipboard, always.
set clipboard+=unnamedplus

" No arrows... ;-)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

highlight Comment cterm=italic
" highlight Keyword cterm=bold

" Deoplete starts automatically
let g:deoplete#enable_at_startup = 1

" NERDTree starts automatically
autocmd vimenter * NERDTree

" Haskell syntax
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 4
let g:haskell_indent_case = 4
let g:haskell_indent_in = 0

" Custom make command for Haskell projects.
autocmd BufEnter * silent! lcd %:p:h
:set makeprg=stack\ install
