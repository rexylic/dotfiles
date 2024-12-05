let g:mapleader = "\ "
let g:maplocalleader = "\\"
let g:vimtex_mappings_prefix = '<LocalLeader>'
let g:vimtex_quickfix_ignore_filters = ['[Ww]arning', 'hbox']

nn == gwip
nn ` <C-w>
nn - :bn<CR>
nn _ :bp<CR>
nn + :vs<CR>
nn L :lua vim.diagnostic.open_float()<CR>

set breakindent smoothscroll cursorline scrolloff=99
set colorcolumn=81,101,121 textwidth=80 nowrap
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
