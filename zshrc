eval "$(/opt/homebrew/bin/brew shellenv)"
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit; compinit
fi

PS1="%1~ %# "
PURE_PROMPT_SYMBOL=$
EDITOR=vi
VISUAL=micro
PAGER=less

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd -I --type f'

ALACRITTY_CONFIG=~/.config/alacritty/alacritty.toml
HELIX_CONFIG=~/.config/helix/config.toml

export BG=$(dark-notify -e)
if [ $BG = "dark" ]; then
	sed -i '1' 's/light/dark/' $ALACRITTY_CONFIG $HELIX_CONFIG
else
	sed -i '1' 's/dark/light/' $ALACRITTY_CONFIG $HELIX_CONFIG
fi

alias bf="brew info"
alias bi="brew install"
alias bic="brew install --cask"
alias bl="brew list"
alias bs="brew search"
alias bubu="brew update && brew upgrade"
alias bui="brew uninstall"

alias ga="git add"
alias gb="git branch"
alias gcl="git clone"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log"
alias gm="git merge"
alias gr="git restore"
alias gpl="git pull"
alias gps="git push"
alias gs="git status"
alias gsm="git submodule"
alias grs="git restore --staged"

function pch {
	pandoc $1 -o $2\
	 	-f markdown+header_attributes+footnotes\
		-t html --template ~/Code/web/personal/archive/template.html\
		--mathjax --no-highlight
	tidy -iq -o $2 $2
}

autoload -U promptinit; promptinit
prompt pure
