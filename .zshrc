ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
export UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH="/usr/bin:/bin:add/more/paths"
export CLICOLOR=1
export LSCOLORS="gafxcxdxbxegedabagacad"
export LC_CTYPE="utf-8"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias desk='cd ~/Desktop'
alias ll='ls -al'
alias man="man -a"
alias rd='rm -rf'
alias rm="rm -i"

alias server="python -m SimpleHTTPServer 8000 && open http://localhost:8000"
alias prof='subl ~/.zshrc'

alias ga='git add '
alias gb='git branch '
alias gc='git add . && git commit -m '
alias gh='git push heroku master && heroku run rake db:migrate && heroku restart && heroku open'
alias gl='git log --decorate --oneline --graph --all --since=2.weeks '
alias go='git checkout '
alias gp='git pull && git push'
alias gr='git add -u && git commit -m '
alias gs='git status '
