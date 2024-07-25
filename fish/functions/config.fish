function config --description 'Configure files'
  set -f intent $argv[1]
  set -f target $argv[2]
  set -f targdir ~/.config/$target
  switch $target 
    case nvim
      set -f file init.lua
    case helix
      set -f file config.toml
    case fastfetch
      set -f file config.jsonc
    case fish
      set -f file config.fish
    case zed
      set -f file settings.json
    case '*'
      echo "Target '$target' is not defined. Exiting..."
      return 1
  end
  set -f confpath $targdir/$file
  set -f gitdir ~/Code/dotfiles
  switch $intent 
    case edit
      argparse 'e/editor=' -- $argv
      set -q _flag_e; or set _flag_e $EDITOR
      $_flag_e $confpath
    case push
      mkdir -p $gitdir/$target/
      cp $confpath $gitdir/$target/
      cd $gitdir
      git add .
      git commit -m "Updated $target config"
      git push
    case compare
      argparse 'd/diff=' -- $argv
      set -q _flag_d; or set _flag_d diff
      $_flag_d $gitdir/$target/$file $confpath 
    case '*'
      echo "Intent '$intent' is not defined. Exiting..."
      return 1
  end
end
