# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Locale
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Glob
setopt extendedglob
set completion-ignore-case on

# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"

plugins=(
  git vi-mode
)


# Go
export GOPATH="$HOME/go"


# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$GOPATH/bin"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export VISUAL='nvim'
export EDITOR='nvim'


# Pure theme
ZSH_THEME="refined"
fpath+=('/home/naissur/.nvm/versions/node/v12.6.0/lib/node_modules/pure-prompt/functions')
autoload -U promptinit && promptinit
prompt pure


# vi mode delay
export KEYTIMEOUT=1

# base16-shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1"  ] && [ -s $BASE16_SHELL/profile_helper.sh  ] && eval "$($BASE16_SHELL/profile_helper.sh)"

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# start base16 shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# 256 colors
if [ "$TERM" = "xterm" ]
then
  export TERM=xterm-256color
fi

alias gst="git status --short"
alias gcor="git for-each-ref refs/heads | cut -d/ -f3- | fzf | xargs git checkout"

export PYTHONSTARTUP=~/.pythonrc

# fzf
export FZF_DEFAULT_OPTS="
  --color fg:-1,bg:-1,hl:16,fg+:7,bg+:-1,hl+:16
  --color info:19,prompt:19,pointer:17,marker:16,spinner:17
  --margin 40%,0,0,0
"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tmuxp
export DISABLE_AUTO_TITLE='true'


###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###


# Grv
unalias grv

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export NEO4J_HOME="$HOME/.neo4j"

export PATH="$HOME/anaconda3/bin:$PATH"

source ~/.kubectl_completion.sh

# SWIG
export PATH="/usr/local/opt/swig@3/bin:$PATH"

# Anaconda

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/johnblue/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/johnblue/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/johnblue/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/johnblue/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda deactivate

alias vim="nvim"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
