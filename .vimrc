set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'henrik/vim-indexed-search'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rking/ag.vim'

call vundle#end()

filetype plugin indent on

colorscheme solarized
syntax on

let mapleader=" "
let g:ctrlp_regexp = 1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

set background=dark
set backspace=2
set expandtab
set hls
set ignorecase
set incsearch
set nocompatible
set nu
set paste
set ruler
set shiftwidth=2
set smartcase
set tabstop=2

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>

