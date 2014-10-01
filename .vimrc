"------------------------- Vundle setting ----------------------------------
set nocompatible                    " not compatible with vi mode
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'ddollar/nerdcommenter'
Plugin 'spolu/dwm.vim'
Plugin 'bling/vim-airline'

call vundle#end()
"--------------------------- End Vundle setting ----------------------------

filetype plugin indent on

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme molokai

set tabstop=4
set shiftwidth=4
set number

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

set ruler

set nobackup
set nowb
set noswapfile

set expandtab

set smarttab

set ai
set si
set wrap

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

set laststatus=2

let g:molokai_original = 1
let g:rehash256 = 1

set t_Co=256

inoremap <leader>w <esc>:w<cr>a

inoremap <leader><leader> <Esc>:

" Highlight trailing whitespaces {{{
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" }}}
"
set encoding=utf-8

let g:airline_left_sep = '➤'
let g:airline_right_sep = '◀︎'
