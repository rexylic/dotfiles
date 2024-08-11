function backup-vim-configs
  cp ~/.vimrc ~/.config/
  cp -r ~/.vim/UltiSnips ~/.config/.vim/
  cp -r ~/.vim/ftplugin ~/.config/.vim/
end
