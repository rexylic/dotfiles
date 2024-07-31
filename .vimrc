call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'lervag/vimtex'
  Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-commentary'
call plug#end()

filetype plugin indent on

hi ColorColumn ctermbg=lightgrey

let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:UltiSnipsEditSplit="tabdo"
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

let mapleader="\ "
let maplocalleader="\\"

nnoremap J <C-f>
nnoremap K <C-b>

nnoremap <Leader>a :Ag<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>c :Commands<CR> 
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :Helptags<CR>
nnoremap <Leader>m :Marks<CR>
nnoremap <Leader>r :Rg<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>w :Windows<CR>

nnoremap <Leader>N :set cul! nu! rnu!<CR>

set autoread
set backspace=eol,indent,start
set breakindent 
set colorcolumn=81,101,121
set expandtab
set foldenable
set foldlevel=5
set foldmethod=indent
set formatoptions=
set ignorecase
set laststatus=2
set list
set listchars=trail:·
set rtp+=/opt/homebrew/opt/fzf
set scrolloff=10
set shiftwidth=2
set shortmess+=aI
set showbreak=|>
set showcmd
set signcolumn=number
set smartcase
set smartindent
set smarttab
set smoothscroll
set statusline=%f%M%=%l,%c;%L
set wildmenu
