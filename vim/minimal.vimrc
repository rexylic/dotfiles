syntax off

let g:mapleader = "\ "
let g:maplocalleader = "\\"

set ai bs=eol,indent,start bri cc=81,101,121 hls is isk-=_ ls=2 lz
set lcs=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:· mps+=<:> nocp noet
set sr sw=0 shm+=aI sbr=¶\ siso=4 scs sms stl=%f%M%R%=%l:%c\ %L ts=2
set tw=80 wmnu wrap

nn ` <c-w>
nn U :redo<cr>

nn [T :tabfirst<cr>
nn ]T :tablast<cr>
nn [b :bprevious<cr>
nn ]b :bnext<cr>
nn [c :cprevious<cr>
nn ]c :cnext<cr>
nn [h <c-t>
nn ]h <c-]>
nn [t :tabprevious<cr>
nn ]t :tabnext<cr>

nn <leader><bs> <nop>
nn <leader>c :tabe ~/.vimrc<cr>
nn <leader>s :let @/ = ""<cr>
nn <leader>v :tabe ~/.vim/after/ftplugin/<C-r>=&filetype<cr>.vim<cr>
nn <leader>w :setl wrap!<cr>

function! CenterCursor()
	let pos = getpos(".")
	normal! zz
	call setpos(".", pos)
endfunction

au CursorMoved,CursorMovedI * call CenterCursor()

set t_Co=1
colorscheme quiet
