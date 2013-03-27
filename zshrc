# Runs for interactive shells only
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export GOPATH=~/prj/go
export HISTFILE=~/.history
export HISTSIZE=10000
export SAVEHIST=10000

export VISUAL=/usr/bin/vim
export EDITOR=$VISUAL

bindkey -e

setopt inc_append_history
setopt share_history
setopt histignoredups
setopt append_history
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store
setopt extended_history

autoload -U compinit
compinit

setopt prompt_subst

alias pingg="ping -i 3 google.com"
alias l='ls -lh'
alias ll='ls -la'
alias be='bundle exec'
alias ack='ack-grep -a'
alias fish='git commit -m ":fish:"'

zstyle ':completion::complete:git-*::files' ignored-patterns '*?~'
zstyle ':completion::complete:hub::*' ignored-patterns '*?~'
