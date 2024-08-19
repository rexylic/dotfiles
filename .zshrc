# pre {{{

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit; compinit
fi

source <(fzf --zsh)

# }}}

# path {{{

PATH+=/opt/homebrew/bin
PATH+=/Library/TeX/texbin

# }}}

# var {{{

PS1="%1~ %# "
PURE_PROMPT_SYMBOL=$
EDITOR=vi
VISUAL=micro
PAGER=less

export FZF_DEFAULT_COMMAND='fd -I --type f'

if type "dark-notify" > /dev/null; then
	export VIMBG=$(dark-notify -e)
fi

# }}}

# alias {{{

alias bf="brew info"
alias bi="brew install"
alias bic="brew install --cask"
alias bl="brew list"
alias bs="brew search"
alias bubu="brew update && brew upgrade"
alias bui="brew uninstall"

alias ga="git add"
alias gb="git branch"
alias gcl="git clome"
alias gcm="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log"
alias gm="git merge"
alias gpl="git pull"
alias gps="git push"
alias gs="git status"
alias grs="git restore --staged"

# }}}

# fn {{{

function pch {
	pandoc $1 -o $2\
	 	-f markdown+header_attributes+footnotes\
		-t html --template ~/Code/web/personal/archive/template.html\
		--mathjax --no-highlight
	tidy -iq -o $2 $2
}

# }}}

# prompt {{{

autoload -U promptinit; promptinit
prompt pure

# }}}
