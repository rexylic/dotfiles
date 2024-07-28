filetype plugin indent on

call plug#begin()
  Plug 'lervag/vimtex'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-unimpaired'
call plug#end()

let mapleader = "\ "
let maplocalleader = "\\"

set breakindent 
set expandtab 
set foldenable 
set nohidden 
set nohlsearch 
set ignorecase 
set laststatus=2
set shiftwidth=2
set showbreak=⎆\  
set showcmd
set smartindent 
set smarttab 
set smoothscroll 
set statusline=%f%M%=%l,%c;%L

syntax enable
