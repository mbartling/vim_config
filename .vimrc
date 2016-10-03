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
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

set ts=4
set sw=4
set ai
set smarttab
set smartindent
set expandtab
"colorscheme ron
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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:airline#extensions#tabline#enabled = 1

colorscheme molokai
let g:molokai_original = 1
"let g:rehash256 = 1

