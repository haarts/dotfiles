# Runs for interactive shells only
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export GOPATH=~/prj/go
export HISTSIZE=10000

bindkey -e

setopt inc_append_history
setopt share_history
setopt histignoredups
setopt extended_glob

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
