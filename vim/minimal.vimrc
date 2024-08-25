sy off
colo quiet

let g:mapleader = "\ "
let g:maplocalleader = "\\"

let g:fzf_layout = 
\ { 'window': { 'width': 0.8, 'height': 0.8, 'yoffset': 0.45 } }
let g:fzf_vim = 
\ { 'preview_window': ['right,50%,<80(up,40%)', 'ctrl-/'] }

set ai bri cc=81,101,121 is isk-=_ ls=2 lz nocp noet rnu sc sr sw=0 shm+=aI 
set sbr=¶\  siso=4 scs sms stl=%f%M%=%B@%-02c\ %-04l/%L t_Co=1 ts=2 tw=80 wmnu

nn ` <c-w>
nn ~ ~h
nn - <Nop>
nn _ :tabc<CR>
nn + :tabe<CR>
nn U :redo<CR>
nn [ :bprevious<CR>
nn ] :bnext<CR>

nn <Up> :cprevious<CR>
nn <Down> :cnext<CR>
nn <Left> :tabprevious<CR>
nn <Right> :tabnext<CR>

nn <Leader>b :Buffers<CR>
nn <Leader>d :exe 'Rg ' . expand('<cword>')<CR>
nn <Leader>c :let @/ = ""<CR>
nn <Leader>f :Files<CR>
nn <Leader>h :Helptags<CR>
nn <Leader>j :Jumps<CR>
nn <Leader>l :BLines<CR>
nn <Leader>m :Marks<CR>
nn <Leader>r :Rg<CR>
nn <Leader>t :Tags<CR>
nn <Leader>v :tabe ~/.vim/after/ftplugin/<C-r>=&filetype<CR>.vim<CR>

fu! CenterCursor()
	let pos = getpos(".")
	norm! zz
	cal setpos(".", pos)
endf
au CursorMoved,CursorMovedI * cal CenterCursor()
