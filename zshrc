# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh


CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"

plugins=(git vi-mode)


# User configuration
  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'


# Pure theme
autoload -U promptinit && promptinit
prompt pure

# vi mode delay
export KEYTIMEOUT=1


# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# nwm directory
export NVM_DIR="/home/naissur/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# tmux 256 colors
export TERM="xterm-256color"
