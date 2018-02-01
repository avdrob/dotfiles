set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on
syn on se title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

set colorcolumn=81
set relativenumber

" set laststatus=2
" set statusline=%f\ %LL\ %cc\ %p%%

set hlsearch
set showmode

map <Esc>n :tabe <CR>
map <Esc>w :tabc <CR>
map <Esc>h :tabp <CR>
map <Esc>l :tabn <CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
" Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jceb/vim-orgmode'

call vundle#end()            " required

" enable git branch indicator
let g:airline#extensions#branch#enabled = 1

" set vim-airline theme
let g:airline_theme ='alduin'

" set recommended settings for syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <F8> :TagbarToggle<CR>
