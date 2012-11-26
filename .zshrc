ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git osx)
source $ZSH/oh-my-zsh.sh

##############################
# Exports ####################
##############################

export CLICOLOR=1
export LSCOLORS="gafxcxdxbxegedabagacad"

##############################
# Exports Paths ##############
##############################

export PATH=/Users/sayanee/perl5/perlbrew/bin:/Users/sayanee/perl5/perlbrew/perls/perl-5.14.2/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/sayanee/Sites/scripts/:/Users/sayanee/.rvm/gems/ruby-1.9.3-p125@global/bin:/opt/local/bin:/opt/local/sbin:/Users/sayanee/Sites/scripts/:/Users/sayanee/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/sayanee/.rvm/gems/ruby-1.9.3-p125/bin:/Users/sayanee/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/sayanee/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/sayanee/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/opt/node/bin:/Developer/usr/bin:/opt/node/bin:/Developer/usr/bin

export CC=/usr/bin/gcc-4.2
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=/Users/sayanee/.rvm/gems/ruby-1.9.3-p125@global/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local:$PATH
export PATH=/usr/local/nginx/sbin:$PATH
export PATH=/Users/sayanee/scripts:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:/opt/node/bin
export PATH=${PATH}:/Developer/usr/bin

export LC_CTYPE="utf-8"

##############################
# Aliases ####################
##############################
alias ..='cd ..'					# 1 level up
alias ...='cd ../..'			  # 2 levels up
alias ....='cd ../../..'		# 3 levels up
alias rd='rm -rf'					# remove folders recurseively
alias desk='cd ~/Desktop'	# cd to desktop
alias c='clear'						# clear
alias ll='ls -al'					# list all files/folders/hidden with permission
alias cp="cp -iv"      		# interactive, verbose
alias rm="rm -i"      		# interactive
alias mv="mv -iv"      		# interactive, verbose
alias grep="grep -i"  		# ignore case
alias man="man -a"				# show all sections for manuals
alias sb="subl ."				  # open the entire folder in sublime text

alias svpy="python -m SimpleHTTPServer 8000 && open http://localhost:8000"
alias svqed"sh server.sh"

alias prof='subl ~/.zshrc'
alias d='subl ~/Dropbox/done.todo'

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -am '
alias gd='git diff '
alias go='git checkout '
alias gl='git log --decorate --oneline --graph --all --since=2.weeks '
alias gh='git log --decorate --oneline --graph --all --pretty="%h, %cr, %s" --since=2.weeks'
alias gr='git add -u && git commit -m '
alias gs='git status '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting