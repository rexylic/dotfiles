let g:pandoc#syntax#conceal#use = 0

setl comments+=n:\|,n:>
setl comments+=b:*,b:-,b:+
setl formatoptions+=r

nnoremap <LocalLeader>c :execute '!pch ' . expand('%:r') . '.pmd ' . expand('%:r') . '.html'<CR>
