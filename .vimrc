filetype plugin indent on

call plug#begin()
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'lervag/vimtex'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
call plug#end()

let mapleader = "\ "
let maplocalleader = "\\"

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :Helptags<CR>
nnoremap <Leader>P :w<CR>:source<CR>:PlugUpdate<CR>:PlugInstall<CR>

set breakindent 
set expandtab 
set foldenable 
set nohidden 
set nohlsearch 
set ignorecase 
set shiftwidth=2
set showbreak=⎆\  
set showcmd
set smartindent 
set smarttab 
set smoothscroll 

syntax enable
