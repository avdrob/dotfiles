set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
colorscheme default

filetype plugin indent on
syn on se title
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=81
highlight ColorColumn ctermbg=124
set number relativenumber

set cursorline
highlight Cursorline ctermbg=0*

" set laststatus=2
" set statusline=%f\ %LL\ %cc\ %p%%

set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=darkyellow
set showmode
set wildmenu

map <Esc>n :tabe <CR>
map <Esc>w :tabc <CR>
map <Esc>h :tabp <CR>
map <Esc>l :tabn <CR>

" Swap ; and :
nnoremap ; :
nnoremap : ;

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
Plugin 'kien/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vimwiki/vimwiki'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'fatih/vim-go'

call vundle#end()            " required

" enable git branch indicator
let g:airline#extensions#branch#enabled = 1

" set vim-airline theme
let g:airline_theme ='alduin'

" air-line
let g:airline_powerline_fonts = 1

" vim-latex-live-preview options
" let g:livepreview_previewer = 'mupdf'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" set recommended settings for syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <F8> :TagbarToggle<CR>
