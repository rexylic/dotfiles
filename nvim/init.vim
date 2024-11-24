let g:mapleader = "\ "
let g:maplocalleader = "\\"
let g:vimtex_mappings_prefix = '<LocalLeader>'
let g:vimtex_quickfix_ignore_filters = ['[Ww]arning', 'hbox']

nn ` <C-w>
nn - :tabn<CR>
nn _ :tabclose<CR>
nn + :tabnew<CR>
nn , :bn<CR>

if $BG[0] == 'l'
	set bg=light
else
	set bg=dark
endif

set breakindent smoothscroll
set colorcolumn=81,101,121 textwidth=80
set cursorline scrolloff=99
set foldexpr=nvim_treesitter#foldexpr() foldlevelstart=99 foldmethod=expr
set iskeyword-=_ showbreak=¶\ 
set shell=/bin/zsh\ -l noswapfile
set shiftwidth=0 tabstop=2
set number relativenumber
set t_Co=256 termguicolors

au BufNewFile,BufRead *.pmd setf pandoc

lua require("config.lazy")
lua require("config.lsp")
lua require("config.clues")

colo everforest
