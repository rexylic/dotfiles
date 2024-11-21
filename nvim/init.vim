let g:mapleader = "\ "
let g:maplocalleader = "\\"
let g:vimtex_mappings_prefix = '<LocalLeader>'
let g:vimtex_indent_lists = []
let g:vimtex_quickfix_ignore_filters = ['[Ww]arning', 'hbox']

nn ` <C-w>
nn - :tabn<CR>
nn _ :tabclose<CR>
nn + :tabnew<CR>
nn , :bn<CR>

nn [t :tabp<CR>
nn ]t :tabn<CR>

nn <Leader>B :Pick git_branches<CR>
nn <Leader>C :Pick git_commits<CR>
nn <Leader>L :Lazy<CR>
nn <Leader>M :Mason<CR>
nn <Leader>b :Pick buffers<CR>
nn <Leader>c :Pick commands<CR>
nn <Leader>d :Pick diagnostic<CR>
nn <Leader>e :lua MiniFiles.open()<CR>
nn <Leader>f :Pick files<CR>
nn <Leader>h :Pick help<CR>
nn <Leader>j :TSJToggle<CR>
nn <Leader>k :Pick keymaps<CR>
nn <Leader>m :Pick marks<CR>
nn <Leader>r :Pick registers<CR>
nn <Leader>s :VsnipOpen<CR>
nn <Leader>t :Telescope treesitter<CR>
nn <Leader>z :ZenMode<CR>

nn <Leader>lc :Pick lsp scope='declaration'<CR>
nn <Leader>ld :Pick lsp scope='definition'<CR>
nn <Leader>li :Pick lsp scope='implementation'<CR>
nn <Leader>lr :Pick lsp scope='references'<CR>
nn <Leader>ls :Pick lsp scope='document_symbol'<CR>
nn <Leader>lt :Pick lsp scope='type_definition'<CR>
nn <Leader>lw :Pick lsp scope='workspace_symbol'<CR>

nn <Leader>qc :Pick list scope='change'<CR>
nn <Leader>qj :Pick list scope='jump'<CR>
nn <Leader>ql :Pick list scope='location'<CR>
nn <Leader>qq :Pick list scope='quickfix'<CR>

if $BG[0] == 'l'
	set bg=light
else
	set bg=dark
endif

set breakindent
set colorcolumn=81,101,121
set cursorline
set foldexpr=nvim_treesitter#foldexpr()
set foldlevelstart=99
set foldmethod=expr
set iskeyword-=_
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
set termguicolors
set textwidth=80

au BufNewFile,BufRead *.pmd setf pandoc

lua require("config.lazy")
lua require("config.lsp")

colo tokyonight
