" plug {{{

call plug#begin()

	Plug 'altercation/vim-colors-solarized'

	Plug 'junegunn/vim-easy-align'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/goyo.vim'

	Plug 'lervag/vimtex'

	Plug 'NLKNguyen/papercolor-theme'

	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'

	Plug 'wellle/context.vim'

	if has('python3')
		Plug 'SirVer/ultisnips'
	endif

call plug#end()

" }}}

" var {{{

let g:mapleader = "\ "
let g:maplocalleader = "\\"

let g:context_highlight_tag = '<hide>'
let g:context_max_height = 5

let g:filetype_md = 'pandoc'

let g:fzf_colors =
\ { 'fg':			 ['fg', 'Normal'],
	\ 'bg':			 ['bg', 'Normal'],
	\ 'hl':			 ['fg', 'Comment'],
	\ 'fg+':		 ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+':		 ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+':		 ['fg', 'Statement'],
	\ 'info':		 ['fg', 'PreProc'],
	\ 'border':  ['bg', 'Ignore'],
	\ 'prompt':  ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker':  ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header':  ['fg', 'Comment'] }
let g:fzf_layout = 
\ { 'window': { 'width': 0.8, 'height': 0.8, 'yoffset': 0.45 } }

let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['right,50%,<80(up,40%)', 'ctrl-/']

let g:goyo_width = "100"

if has('python3')
	let g:UltiSnipsEditSplit = "tabdo"
	let g:UltiSnipsExpandTrigger = "<tab>"
	let g:UltiSnipsJumpForwardTrigger = "<tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
endif

let g:vimtex_quickfix_ignore_filters = ['Overfull']

" }}}

" opt {{{

set backspace=eol,indent,start
set background&
set breakindent

set colorcolumn=81,101,121
set cursorline

set foldlevel=4
set foldmethod=indent
set formatoptions=q

set hlsearch

set incsearch
set iskeyword-=_

set laststatus=2
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set nocompatible
set noshowcmd
set number

set relativenumber

set scrolloff=9
set shiftround
set shiftwidth=0
set shortmess+=aI
set sidescrolloff=16
set smartcase
set smartindent
set smoothscroll
set statusline=%f%M%R%=%l:%c\ %L

set tabstop=2
set textwidth=80

set wildmenu
set wrap

" }}}

" map {{{

nnoremap ` <c-w>
nnoremap < <<
nnoremap > >>
nnoremap J <c-d>
nnoremap K <c-u>
nnoremap U :redo<cr>

nnoremap ,l :source ./
nnoremap ,s :mksession ./
nnoremap ,t :tabedit 

nnoremap [B :bfirst<cr>
nnoremap ]B :blast<cr>
nnoremap [C :cfirst<cr>
nnoremap ]C :clast<cr>
nnoremap [T :tabfirst<cr>
nnoremap ]T :tablast<cr>

nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
nnoremap [c :cprevious<cr>
nnoremap ]c :cnext<cr>
nnoremap [h <c-t>
nnoremap ]h <c-]>
nnoremap [t :tabprevious<cr>
nnoremap ]t :tabnext<cr>

nnoremap <leader>C :let @/ = ""<cr>
nnoremap <leader>G :Goyo<cr>
nnoremap <leader>L :setl list!<cr>
nnoremap <leader>W :setl wrap!<cr>

nnoremap <leader>b :Buffers<cr>
nnoremap <leader>d :exe 'Rg ' . expand('<cword>')<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>h :Helptags<cr>
nnoremap <leader>j :Jumps<cr>
nnoremap <leader>l :BLines<cr>
nnoremap <leader>m :Marks<cr>
nnoremap <leader>r :Rg<cr>
nnoremap <leader>s :Snippets<cr>
nnoremap <leader>u :UltiSnipsEdit<cr>
nnoremap <leader>w :Windows<cr>

" }}}

" theme {{{

if $VIMBG[0] == 'l' " set with dark-notify -e
	set bg=light
else
	set bg=dark
endif

set t_Co=256
colorscheme PaperColor

filetype plugin indent on
syntax enable

" }}}

