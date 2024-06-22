" vim: foldmethod=marker

" general {{{
set encoding=utf-8
let mapleader = " "
set background=dark
set noerrorbells visualbell t_vb=
set number relativenumber
set wildignore=*.swp,*.bak,*.pyc,*.class,*.cache,*.dll,*.DS_Store,*.rdb,*.db,*.sqlite
set wildignore+=__pycache__/*,venv/*,env/*,.git/*,build/*,node_modules/*,dist/*
set backspace=indent,eol,start
set cursorline
set showmatch
set title
set ruler
" configure whitespace characters, toggle with :set list/:set list!
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
" change cursor shape in insert/normal
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
set ttimeout
set ttimeoutlen=100

" code
syntax on
filetype plugin indent on
set expandtab softtabstop=4 shiftwidth=4 tabstop=4
set autoindent
set smartindent

" search
set incsearch
" center search results, jumps etc.
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-]> <C-]>zz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" }}}

" buffers {{{
set hidden
" toggle buffers with easier shortcut
nnoremap <silent> <Right> :bnext<cr>
nnoremap <silent> <Left> :bprev<cr>
" }}}

" windows {{{
" split below and right by default
set splitbelow splitright
" }}}


" plugins {{{
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'unblevable/quick-scope'

call plug#end()

" }}}
