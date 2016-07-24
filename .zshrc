# ZSH config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sayanee"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
COMPLETION_WAITING_DOTS="true"
plugins=(git git-flow docker bgnotify)
unsetopt SHARE_HISTORY
source $ZSH/oh-my-zsh.sh

# link other config
source ~/.git-flow-completion.zsh
source ~/.sparkrc

# common alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias desk='cd ~/Desktop && clear'
alias ll='ls -lah'
alias man="man -a"
alias rd='rm -rf'
alias server="python -m SimpleHTTPServer 8000 && open http://localhost:8000"
alias prof='atom ~/.zshrc'
alias src='source ~/.zshrc'
alias screenshare='open /System/Library/CoreServices/Applications/Screen\ Sharing.app/'

# common git alias
alias ga='git add '
alias gb='git branch '
alias gc='git add . && git commit -m '
alias gj='git push origin master && git status && git checkout gh-pages && git rebase master && git push origin gh-pages && git checkout master && git status'
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(cyan)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias goo='git checkout '
alias gp='git pull && git push'
alias gr='git add -u && git commit -m '
alias gs='git status '
alias gsq='git rebase -i master'

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

# killport 4000
killport() {
  kill -TERM `lsof -t -i:$1`
}

# get_test google.com
http_test() {
  while true; do
    curl $1 -s > /dev/null
    echo .
    sleep 0.1
  done | pv -l > /dev/null
}

[ -f /Users/sayanee/.travis/travis.sh ] && source /Users/sayanee/.travis/travis.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
