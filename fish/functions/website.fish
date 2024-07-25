function website
  set -f sitedir ~/Code/personal-website
  set -f intent $argv[1]
  set -f template $sitedir/archive/template.html
  switch $intent
    case status
      git status $sitedir
    case edit
      set -f target $argv[2]
      switch $target
        case style
          $EDITOR $sitedir/style.css
        case gen
          $EDITOR $sitedir/gen.js
        case template
          $EDITOR $template
        case '*'
          echo "Target $target undefined"
          return 1
      end
    case new
      set -f category $argv[2]
      set -f pagename $argv[3]
      cd $sitedir
      mkdir -p $category
      $EDITOR $category/$pagename.html
  end
end
