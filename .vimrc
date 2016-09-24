execute pathogen#infect()
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


syntax on
filetype plugin indent on

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

