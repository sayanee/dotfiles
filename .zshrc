ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
export UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/sayanee/.rvm/bin:/Users/sayanee/Workspace/scripts"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export CLICOLOR=1
export LSCOLORS="gafxcxdxbxegedabagacad"
export LC_CTYPE="utf-8"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias desk='cd ~/Desktop && clear'
alias ll='ls -al'
alias man="man -a"
alias rd='rm -rf'
alias rm="rm -i"

alias server="python -m SimpleHTTPServer 8000 && open http://localhost:8000"
alias prof='subl ~/.zshrc'

alias ga='git add '
alias gb='git branch '
alias gc='git add . && git commit -m '
alias gj='git push origin master && git status && git checkout gh-pages && git rebase master && git push origin gh-pages && git checkout master && git status'
alias gl='git log --decorate --oneline --graph --all --since=2.weeks '
alias go='git checkout '
alias gp='git pull && git push'
alias gr='git add -u && git commit -m '
alias gs='git status '

# https://gist.github.com/SlexAxton/4989674
gifify() {
  if [[ -n "$1" ]]; then
    if [[ $2 == '--good' ]]; then
      ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
      time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
      rm out-static*.png
    else
      ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
    fi
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}
