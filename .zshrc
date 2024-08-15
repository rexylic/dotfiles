# pre {{{

eval "$(/opt/homebrew/bin/brew shellenv)"

fpath+=("$(brew --prefix)/share/zsh/site-functions")

# }}}

# var {{{

EDITOR=vi
PAGER=less
PS1="%1~ %# "
PURE_PROMPT_SYMBOL=$

export NO_COLOR

if type "dark-notify" > /dev/null; then
	export VIMBG=$(dark-notify -e)
fi

# }}}

# alias {{{

alias bf="brew info"
alias bi="brew install"
alias bic="brew install --cask"
alias bs="brew search"
alias bubu="brew update && brew upgrade"
alias bui="brew uninstall"

alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias gs="git status"

# }}}

# prompt {{{

autoload -U promptinit; promptinit
prompt pure

# }}}
