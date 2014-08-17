export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]  \D{%F %T} \n\$ '

export CLICOLOR=1
export LSCOLORS="gafxcxdxbxegedabagacad"
export LANG="en_US.UTF-8"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias ll='ls -lah'
alias man="man -a"
alias rd='rm -rf'

alias ga='git add '
alias gb='git branch '
alias gc='git add . && git commit -m '
alias gj='git push origin master && git status && git checkout gh-pages && git rebase master && git push origin gh-pages && git checkout master && git status'
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(cyan)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias go='git checkout '
alias gp='git pull && git push'
alias gr='git add -u && git commit -m '
alias gs='git status '
