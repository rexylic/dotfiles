lua << EOF
	local path_package = vim.fn.stdpath('data') .. '/site/'
	local mini_path = path_package .. 'pack/deps/start/mini.nvim'
	if not vim.loop.fs_stat(mini_path) then
	  vim.cmd('echo "Installing `mini.nvim`" | redraw')
	  local clone_cmd = {
		'git', 'clone', '--filter=blob:none',
		'https://github.com/echasnovski/mini.nvim', mini_path
	  }
	  vim.fn.system(clone_cmd)
	  vim.cmd('packadd mini.nvim | helptags ALL')
	  vim.cmd('echo "Installed `mini.nvim`" | redraw')
	end
	require('mini.deps').setup { path = { package = path_package } }
EOF

lua << EOF
	require('mini.ai').setup {}
	require('mini.align').setup {
		mappings = {
			start = '-',
			start_with_preview = 'gA',
		}
	}
	require('mini.bracketed').setup {}
	require('mini.clue').setup {}
	require('mini.comment').setup {}
	require('mini.completion').setup {}
	require('mini.extra').setup {}
	require('mini.files').setup {}
	require('mini.git').setup {}
	require('mini.icons').setup {}
	require('mini.indentscope').setup {}
	require('mini.move').setup {}
	require('mini.pairs').setup {}
	require('mini.pick').setup {}
	require('mini.sessions').setup {}
	require('mini.splitjoin').setup {}
	require('mini.statusline').setup {}
	require('mini.surround').setup {}
	require('mini.tabline').setup {}
	require('mini.visits').setup {}
EOF

lua << EOF
	local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later
	add { source = 'shaunsingh/nord.nvim' }
	add { 
		source = 'garbas/vim-snipmate', 
		depends = { 'marcweber/vim-addon-mw-utils' } 
	}
	add { source = 'lervag/vimtex' }
EOF

let g:mapleader = "\ "
let g:maplocalleader = "\\"
let g:snipMate = { 'snippet_version': 1 }
let g:vimtex_mappings_prefix = '<localleader>'
let g:vimtex_indent_lists = []
let g:vimtex_quickfix_ignore_filters = ['[Ww]arning', 'hbox']

nnoremap ` <C-w>
nnoremap _ :tabc<CR>
nnoremap = gqip
nnoremap + :tabe<CR>
nnoremap [ :tabp<CR>
nnoremap ] :tabn<CR>
nnoremap Q @@
nnoremap U :redo<CR>

nnoremap ,d :Pick lsp scope='declaration'
nnoremap ,f :Pick lsp scope='definition'
nnoremap ,i :Pick lsp scope='implementation'
nnoremap ,r :Pick lsp scope='declaration'
nnoremap ,s :Pick lsp scope='document_symbol'
nnoremap ,t :Pick lsp scope='type_definition'
nnoremap ,w :Pick lsp scope='workspace_symbol'

nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>c :Pick commands<CR>
nnoremap <Leader>d :Pick diagnostic<CR>
nnoremap <Leader>d :Pick explorer<CR>
nnoremap <Leader>f :Pick files<CR>
nnoremap <Leader>gb :Pick git_branches<CR>
nnoremap <Leader>gc :Pick git_commits<CR>
nnoremap <Leader>gf :Pick git_files<CR>
nnoremap <Leader>h :Pick help<CR>
nnoremap <Leader>j :Jumps<CR>
nnoremap <Leader>l :Pick buf_lines<CR>
nnoremap <Leader>m :Pick marks<CR>
nnoremap <Leader>r :Pick registers<CR>
nnoremap <Leader>s :tabe ~/.config/nvim/snippets/<C-r>=&filetype<CR>.snippets<CR>
nnoremap <Leader>t :Pick treesitter<CR>

set autoindent
set background=dark
set breakindent
set colorcolumn=81,101,121,141
set cursorline
set foldmethod=marker
set incsearch
set ruler
set scrolloff=99
set shell=/bin/zsh\ -l
set showbreak=¶\ 
set smartcase
set smoothscroll
set shiftwidth=0
set noswapfile
set number
set relativenumber
set tabstop=4
set textwidth=80
set timeoutlen=200
set ttimeoutlen=100
set wildmenu
set wrap

filetype indent plugin on
syntax on
colorscheme nord
