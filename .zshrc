export ZSH="$HOME/.oh-my-zsh"

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR=micro
   export EDITOR="$VISUAL"
else
	export VISUAL=micro
	export EDITOR="$VISUAL"
fi

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

export UPDATE_ZSH_DAYS=5
export HOMEBREW_NO_ANALYTICS=1
export LANG=en_US.UTF-8
export GPG_TTY=$(tty)

ZSH_THEME="spaceship"

plugins=(
	git gitfast git-extras
	last-working-dir
	common-aliases
	history-substring-search
	rbenv nodenv pyenv
	bundler	gem pip yarn
	osx brew
	aws
	docker kubectl
	web-search
	colored-man-pages colorize
	zsh-completions zsh-autosuggestions zsh-syntax-highlighting
)

SPACESHIP_PROMPT_ORDER=(
  user host package node ruby
  docker dir git time battery
  exec_time exit_code char
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_SHOW_FULL=true
SPACESHIP_BATTERY_SHOW=always

source $ZSH/oh-my-zsh.sh

eval "$(anyenv init -)"

export CC=clang
export CXX=clang
export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib
