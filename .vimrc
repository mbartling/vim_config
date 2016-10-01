set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on

set ts=4
set sw=4
set ai
set smarttab
set smartindent
set expandtab
colorscheme ron
syntax on
set number

set history=50
set ruler
set incsearch
set backspace=2 " make backspace work like most other apps

set foldmethod=indent


" execute pathogen#infect()

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


syntax on
"map <C-n>n :NERDTreeToggle<CR>
