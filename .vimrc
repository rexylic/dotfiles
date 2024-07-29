call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'lervag/vimtex'
  Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-unimpaired'
call plug#end()

filetype plugin indent on

let g:fzf_vim = {}
let g:fzf_vim.preview_window = []

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

let mapleader="\ "
let maplocalleader="\\"

nnoremap <Leader>a :Ag<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :Helptags<CR>
nnoremap <Leader>m :Marks<CR>
nnoremap <Leader>w :Windows<CR>

set backspace="eol,indent,start"
set breakindent 
set cursorline
set expandtab 
set foldenable 
set ignorecase 
set laststatus=2
set nocompatible
set nohidden 
set scrolloff=10
set shiftwidth=2
set showbreak=⎆\  
set showcmd
set signcolumn="number"
set smartindent 
set smarttab 
set smoothscroll 
set statusline=\ %f%M%=%l,%c;%L\ 

syntax enable
