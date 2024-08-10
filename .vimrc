" plug {{{
call plug#begin()
	Plug '/opt/homebrew/opt/fzf'
	Plug 'altercation/vim-colors-solarized'
	Plug 'junegunn/fzf.vim'
	Plug 'lervag/vimtex'
	Plug 'mhinz/vim-tree'
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

let g:fzf_vim = {}
let g:fzf_colors =
\ { 'fg':			 ['fg', 'Normal'],
	\ 'bg':			 ['bg', 'Normal'],
	\ 'hl':			 ['fg', 'Comment'],
	\ 'fg+':		 ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+':		 ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+':		 ['fg', 'Statement'],
	\ 'info':		 ['fg', 'PreProc'],
	\ 'border':  ['fg', 'Ignore'],
	\ 'prompt':  ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker':  ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header':  ['fg', 'Comment'] }

if has('python3')
	let g:UltiSnipsEditSplit = "tabdo"
	let g:UltiSnipsExpandTrigger = "<Tab>"
	let g:UltiSnipsJumpForwardTrigger = "<Tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
endif

let g:vimtex_quickfix_ignore_filters = ['Overfull']
" }}}

" ft {{{
filetype plugin indent on
" }}}

" opt {{{
set ar bri fen hls is nocp noet rnu sr sc scs si sms wmnu wrap
set backspace=eol,indent,start
set background&
set colorcolumn=81,101,121
set foldlevel=4
set foldmethod=indent
set formatoptions=tcro/qwaljp
set iskeyword-=_
set laststatus=2
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set mouse=a
set scrolloff=9
set shiftwidth=2
set shortmess+=aI
set sidescrolloff=16
set softtabstop=2
set statusline=%f%M%=%c,%l;%L
set tabstop=2
set textwidth=80
set ttimeoutlen=1000
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

nnoremap <leader>b	:Buffers<cr>
nnoremap <leader>c	:Commands<cr>
nnoremap <leader>d	:exe 'Rg ' . expand('<cWORD>')<cr>
nnoremap <leader>f	:Files<cr>
nnoremap <leader>h	:Helptags<cr>
nnoremap <leader>j	:Jumps<cr>
nnoremap <leader>l	:Lines<cr>
nnoremap <leader>m	:Marks<cr>
nnoremap <leader>r	:Rg<cr>
nnoremap <leader>s	:Snippets<cr>
nnoremap <leader>t	:Tags<cr>
nnoremap <leader>w	:Windows<cr>

nnoremap <leader>C	:let @/ = ""<cr>
nnoremap <leader>I	:%ret!<cr>
nnoremap <leader>L	:setl list!<cr>
nnoremap <leader>N	:setl nu! rnu!<cr>
nnoremap <leader>T	:Tree<cr>
nnoremap <leader>U	:UltiSnipsEdit<cr>
nnoremap <leader>W	:setl wrap!<cr>
nnoremap <leader>X	:ContextEnable<cr>:ContextPeek<cr>
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
