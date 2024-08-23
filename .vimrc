" plug {{{

call plug#begin()
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'lervag/vimtex'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'
	Plug 'wellle/context.vim'
	if has('python3')
		Plug 'SirVer/ultisnips'
	endif
call plug#end()

" }}}

" var {{{

let g:context_highlight_tag = '<hide>'

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
let g:fzf_vim = 
\ { 'preview_window': ['right,50%,<80(up,40%)', 'ctrl-/'] }

let g:goyo_width = "82"

let g:mapleader = "\ "
let g:maplocalleader = "\\"

let g:PaperColor_Theme_Options = {
	\   'language': {
	\     'python': {
	\       'highlight_builtins' : 1
	\     },
	\     'cpp': {
	\       'highlight_standard_library': 1
	\     },
	\     'c': {
	\       'highlight_builtins' : 1
	\     }
	\   },
	\		'theme': {
	\			'default': {
	\				'allow_bold': 1,
	\				'allow_italic': 1,
	\			}
	\		}
	\ }

let g:vimtex_mappings_prefix = '<localleader>'
let g:vimtex_quickfix_ignore_filters = ['Warning', 'Overfull', 'float specifier']

if has('python3')
	let g:UltiSnipsEditSplit = "tabdo"
	let g:UltiSnipsExpandTrigger = "<tab>"
	let g:UltiSnipsJumpForwardTrigger = "<tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
endif

" }}}

" opt {{{

set autoindent

set backspace=eol,indent,start
set breakindent

set colorcolumn=81,101,121
set cursorline

set foldlevel=4
set foldmethod=indent

set hlsearch

set incsearch
set iskeyword-=_

set laststatus=2
set lazyredraw
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set matchpairs+=<:>

set nocompatible
set noexpandtab

set relativenumber

set shiftround
set shiftwidth=0
set shortmess+=aI
set showbreak=¶\ 
set sidescrolloff=4
set smartcase
set smoothscroll
set statusline=%f%M%R%=%l:%c\ %L

set tabstop=2
set termguicolors
set textwidth=80
set ttimeoutlen=100

set wildmenu
set wrap

" }}}

" fn {{{

function! CenterCursor()
	let pos = getpos(".")
	normal! zz
	call setpos(".", pos)
endfunction

function! LightTheme()
	set bg=light
	colorscheme PaperColor
endfunction

function! DarkTheme()
	set bg=dark
	colorscheme PaperColor
endfunction

" }}}

" map {{{

nn <bs> "_dd
nn <s-bs> "_S<esc>
nn <cr> yyp
nn <s-cr> yyP
nn <tab> >>
nn <s-tab> <<

nn ` <c-w>
nn U :redo<cr>

nn [B :bfirst<cr>
nn ]B :blast<cr>
nn [C :cfirst<cr>
nn ]C :clast<cr>
nn [S :call LightTheme()<cr>
nn ]S :call DarkTheme()<cr>
nn [T :tabfirst<cr>
nn ]T :tablast<cr>

nn [b :bprevious<cr>
nn ]b :bnext<cr>
nn [c :cprevious<cr>
nn ]c :cnext<cr>
nn [h <c-t>
nn ]h <c-]>
nn [s :syntax off<cr>
nn ]s :syntax enable<cr>
nn [t :tabprevious<cr>
nn ]t :tabnext<cr>

nn <leader><bs> <nop>
nn <leader>, :echo synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')<cr>

nn <leader>C :let @/ = ""<cr>
nn <leader>L :setl list!<cr>
nn <leader>T :tabnew<cr>
nn <leader>V :tabe ~/.vimrc<cr>
nn <leader>W :setl wrap!<cr>

nn <leader>b :Buffers<cr>
nn <leader>c :Commits<cr>
nn <leader>d :exe 'Rg ' . expand('<cword>')<cr>
nn <leader>f :Files<cr>
nn <leader>h :Helptags<cr>
nn <leader>j :Jumps<cr>
nn <leader>l :BLines<cr>
nn <leader>m :Marks<cr>
nn <leader>r :Rg<cr>
nn <leader>s :Snippets<cr>
nn <leader>t :Tags<cr>
nn <leader>u :UltiSnipsEdit<cr>
nn <leader>v :tabe ~/.vim/after/ftplugin/<C-r>=&filetype<cr>.vim<cr>
nn <leader>w :Windows<cr>

xmap , <plug>(EasyAlign)
nmap , <plug>(EasyAlign)

" }}}

" theme {{{

set t_Co=256
if $VIMBG[0] == 'l' " set with dark-notify -e
	call LightTheme()
else
	call DarkTheme()
endif

" }}}

" au {{{

au CursorMoved,CursorMovedI * call CenterCursor()

" }}}
