" These settings are specific for Haskell development (stack-based) with NeoVim.
" Tested in Ubuntu 16.04.1 + Cinnamon + Gnome Terminal 3.18.3 with Solarized Dark theme.

" This is the place where plugins will be loaded.
call plug#begin('~/.local/share/nvim/plugged')

" For fast searching in project. And don't forget make 'sudo apt install ack-grep'.
Plug 'mileszs/ack.vim'

" Auto pairs for braces.
Plug 'jiangmiao/auto-pairs'

" Great autocomplete engine.
" And don't forget to install Python3 interface with 'pip3 install neovim' command.
Plug 'Shougo/deoplete.nvim'

" Basic support of Haskell.
Plug 'neovimhaskell/haskell-vim'

" Autocomplete for Haskell, based on ghc-mod. It's need for deoplete.
" And don't forget make 'stack install ghc-mod', because 'ghc-mod' command should be in your PATH.
Plug 'eagletmt/neco-ghc'

" Powerful file tree.
Plug 'scrooloose/nerdtree'

" Autocomplete with <TAB> key.
Plug 'ervandew/supertab'

" Autoindent with patterns.
Plug 'godlygeek/tabular'

" Powerful status of project (filetype, encoding, mode, etc.).
Plug 'vim-airline/vim-airline'

" Themes for Airline (see below).
Plug 'vim-airline/vim-airline-themes'

" Glyphs for filetypes etc. I use 'Source Code Pro' font, 
" so install patched version of this font as well.
Plug 'ryanoasis/vim-devicons'

" Wrapper around git, run git commands right in editor.
Plug 'tpope/vim-fugitive'

" Shows git status for curent file/branch.
Plug 'airblade/vim-gitgutter'

" Elm support.
Plug 'ElmCast/elm-vim'

" Nix support.
Plug 'spwhitt/vim-nix'

" Initialize plugin system.
call plug#end()

" Shows line numbers.
set nu

" Shows syntax highlighting.
syntax on

" Use plugins/indentation based on filetype.
filetype plugin on
filetype indent on

" Just in case. ;-)
set encoding=utf8

" Sets the theme for Airline.
let g:airline_theme='cool'

" Devicons fonts for Airline.
let g:airline_powerline_fonts=1

" Simplify commands inserting, use ';' as ':', it's the same key anyway. ;-)
nnoremap ; :

" No useless trash.
set noswapfile

set nofoldenable

" Search done right.
set hlsearch
set incsearch

set tm=5

set mouse=a
set mousehide

" 4 spaces on <TAB> by default.
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Work with system clipboard, always. And don't forget 'sudo apt install xclip'.
set clipboard+=unnamedplus

" It's Vim, no arrows keys please. ;-)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Cursive comments are great IMHO.
highlight Comment cterm=italic

" Deoplete always starts automatically.
let g:deoplete#enable_at_startup = 1

" Haskell syntax tuning.
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 4
let g:haskell_indent_case = 4
let g:haskell_indent_in = 0

" Custom :make command for stack-based Haskell projects.
" Always check current file, so we can build project any time.
autocmd BufEnter * silent! lcd %:p:h
set makeprg=stack\ install
