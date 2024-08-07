" opt {{{
filetype plugin indent on

set autoread
set backspace=eol,indent,start
set breakindent
set colorcolumn=81,101,121
set expandtab
set foldenable
set foldlevel=4
set formatoptions=
set hlsearch
set incsearch
set ignorecase
set iskeyword-=_
set laststatus=2
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set mouse=a
set nocompatible
set relativenumber
set scrolloff=9
set shiftround
set shiftwidth=2
set shortmess+=aI
set showcmd
set sidescrolloff=16
set signcolumn=number
set smartcase
set smartindent
set smoothscroll
set statusline=%f%M%=%c,%l;%L
set ttimeoutlen=1000
set wildmenu

syntax enable
" }}}

" var {{{
let mapleader="\ "
let maplocalleader="\\"

let g:context_highlight_tag = '<hide>'
let g:context_max_height = 5

let g:filetype_md = 'pandoc'

let g:fzf_vim = {}
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

let g:pencil_higher_contrast_ui = 1
let g:pencil_terminal_italics = 1

let g:UltiSnipsEditSplit = "tabdo"
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

let g:vimtex_quickfix_ignore_filters = ['Overfull']
" }}}

" map {{{
nnoremap ` <c-w>
nnoremap J <c-d>
nnoremap K <c-u>

nnoremap [B :bfirst<cr>
nnoremap ]B :blast<cr>

nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
nnoremap [h <c-t>
nnoremap ]h <c-]>

nnoremap <leader>b  :Buffers<cr>
nnoremap <leader>c  :Commands<cr>
nnoremap <leader>f  :Files<cr>
nnoremap <leader>h  :Helptags<cr>
nnoremap <leader>j  :Jumps<cr>
nnoremap <leader>l  :Lines<cr>
nnoremap <leader>m  :Marks<cr>
nnoremap <leader>r  :Rg<cr>
nnoremap <leader>s  :Snippets<cr>
nnoremap <leader>t  :Tags<cr>
nnoremap <leader>w  :Windows<cr>

nnoremap <leader>C  :let @/ = ""<cr>
nnoremap <leader>F  :NERDTreeToggle<cr>
nnoremap <leader>L  :setl list!<cr>
nnoremap <leader>N  :setl nu! rnu!<cr>
nnoremap <leader>Sr :source ./
nnoremap <leader>Sw :mksession ./
nnoremap <leader>U  :UltiSnipsEdit<cr>
nnoremap <leader>V  :tabe ~/.vimrc<cr>
nnoremap <leader>X  :ContextEnable<cr>:ContextPeek<cr>
" }}}

" plug {{{
call plug#begin()
  Plug '/opt/homebrew/opt/fzf'
	Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/fzf.vim'
  Plug 'lervag/vimtex'
  Plug 'preservim/nerdtree'
  Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'wellle/context.vim'
call plug#end()
" }}}

" theme {{{
if !empty($COLORFGBG) && stridx($COLORFGBG, ';') != -1
  let parts = split($COLORFGBG, ';')
  if parts[1] == '0'
    set bg=dark
  else
    set bg=light
  endif
endif

colorscheme solarized
" }}}

