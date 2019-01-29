" LOADING
execute pathogen#infect()

" LEADER
let mapleader=" "

" FILE TYPES
filetype on

" THEME & LAYOUT
colorscheme Tomorrow-Night-Bright
set number
syntax on

" PERFORMANCES & HISTORY
set history=100

" EDITING
set bs=2

" TEXT FORMATTING
filetype indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e " Remove whitespaces on save

" SEARCH
set hlsearch
noremap <Leader>r :CommandTFlush<CR> " Hit <Leader>+r to reindex files for command-t

" NAVIGATION
set showmatch
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" USE ARROWS TO MOVE
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" RELOAD VIMRC
map <leader>s :source ~/.vimrc<CR>
