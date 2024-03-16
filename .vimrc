let mapleader = " "
syntax on
set number relativenumber
set wildignore=*.swp,*.bak,*.pyc,*.class,*.cache,*.dll,*.DS_Store,*.rdb,*.db,*.sqlite
set wildignore+=__pycache__/*,venv/*,env/*,.git/*,build/*,node_modules/*,dist/*
set showmatch
set title
set ruler
" configure whitespace characters, toggle with :set list/:set list!
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
" change cursor shape in insert/normal
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" indentation
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

" buffers
set hidden
" toggle between two buffers
nnoremap <leader><Tab> <C-^>
" navigate between buffers with <leader> n (next) and N (previous)
nnoremap <leader>n :bnext<cr>
nnoremap <leader>N :bprev<cr>
" better way to close current buffer by first going to previous buffer and
" closing old current
nnoremap <leader>q :bp\|bd #<cr>

" windows
" split below and right by default
set splitbelow splitright
