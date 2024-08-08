function fish_greeting
  fzf --fish | source
  _pure_check_for_new_release
  fastfetch -l small
end
