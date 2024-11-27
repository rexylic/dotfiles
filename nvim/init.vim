let g:mapleader = "\ "
let g:maplocalleader = "\\"
let g:vimtex_mappings_prefix = '<LocalLeader>'
let g:vimtex_quickfix_ignore_filters = ['[Ww]arning', 'hbox']
nn == gwip
nn ` <C-w>
nn - :tabnext<CR>
nn _ :tabclose<CR>
nn + :tabnew<CR>
nn , :bn<CR>
nn L :lua vim.diagnostic.open_float()<CR>

if $BG[0] == 'l'
	set bg=light
else
	set bg=dark
endif

set breakindent smoothscroll
set colorcolumn=81,101,121 textwidth=80 nowrap
set cursorline scrolloff=99
set foldexpr=v:lua.vim.treesitter.foldexpr()
set foldlevelstart=99 foldmethod=expr
set iskeyword-=_ showbreak=¶\ 
set shell=/bin/zsh\ -l noswapfile
set shiftwidth=0 tabstop=2
set mouse= number relativenumber
set t_Co=256 termguicolors

au BufNewFile,BufRead *.pmd setf pandoc

lua require("config.lazy")
lua require("config.lsp")
lua require("config.clues")
lua require("config.theme")
