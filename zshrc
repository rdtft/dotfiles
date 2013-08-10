bindkey -v
bindkey jj vi-cmd-mode

PROMPT='%~ %# '

export LESS=-r
export PATH="/usr/local/bin:$PATH"
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
export PAGER=less
export CLICOLOR=1
export EDITOR=vim

HISTFILE=$HOME/.zsh/history
HISTSIZE=1000
SAVEHIST=1000

setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt inc_append_history

autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

alias v=vim
alias g=git
alias l='ls -l'
alias ll='ls -la'
alias mkdir='mkdir -p'
alias tree='tree -C'
alias wget='wget --no-check-certificate'

# use .zshrc.local for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local
