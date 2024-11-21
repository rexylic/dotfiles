let g:mapleader = "\ "
let g:maplocalleader = "\\"
let g:snipMate = { 'snippet_version': 1 }
let g:vimtex_mappings_prefix = '<localleader>'
let g:vimtex_indent_lists = []
let g:vimtex_quickfix_ignore_filters = ['[Ww]arning', 'hbox']

nnoremap ` <C-w>
nnoremap = gqip

nnoremap ,d :Telescope lsp_definitions<CR>
nnoremap ,r :Telescope lsp_references<CR>
nnoremap ,s :Telescope lsp_dynamic_workspace_symbols<CR>
nnoremap ,t :Telescope lsp_type_definitions<CR>

nnoremap <Leader>C :Telescope commands<CR>
nnoremap <Leader>L :Lazy<CR>
nnoremap <Leader>T :Telescope tags<CR>
nnoremap <Leader>d :Telescope diagnostics<CR>
nnoremap <Leader>e :lua MiniFiles.open()<CR>
nnoremap <Leader>f :Telescope git_files<CR>
nnoremap <Leader>h :Telescope help_tags<CR>
nnoremap <Leader>j :TSJToggle<CR>
nnoremap <Leader>s :VsnipOpen<CR>
nnoremap <Leader>t :Telescope treesitter<CR>

set breakindent
set colorcolumn=81,101,121,141
set cursorline
set incsearch
set ruler
set scrolloff=99
set shell=/bin/zsh\ -l
set shiftwidth=0
set showbreak=¶\ 
set smartcase
set smoothscroll
set noswapfile
set number
set relativenumber
set tabstop=2
set textwidth=80

lua require("config.lazy")
lua require("config.lsp")
colorscheme everforest
