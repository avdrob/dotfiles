set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on
syn on se title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

set colorcolumn=81
set number

set laststatus=2
set statusline=%f\ %LL\ %cc\ %p%%

set hlsearch
set showmode

map <Esc>n :tabe <CR>
map <Esc>w :tabc <CR>
map <Esc>h :tabp <CR>
map <Esc>l :tabn <CR>
