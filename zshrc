# ZSH config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sayanee"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  node
  npm
  github
  bgnotify
  git-open
  zsh-syntax-highlighting
  zsh-autosuggestions
)
unsetopt SHARE_HISTORY

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

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
alias src='source ~/.zshrc'
alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias xtractaudio='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 -q --restrict-filenames https://www.youtube.com/watch\?v\='
alias xtractvideo="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'  https://www.youtube.com/watch\?v\="

# cli alias
# alias ls='exa'
# alias cat='bat'

# common git alias
alias git='/usr/local/bin/git' # take the brew install
alias ga='git add '
alias gb='git branch '
alias gc='git add . && git commit -m '
alias gl="git log --graph --abbrev-commit --decorate --date=short --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar on %cd)%C(reset) %C(cyan)%s%C(reset) %C(red)by %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias goo='git checkout '
alias gp='git pull && git push'
alias gr='git add -u && git commit -m '
alias gs='git status --untracked-files'

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

# get_test localhost:4000
http_test() {
  while true; do
    resp=$(curl --write-out "Status : %{http_code}, Response Time: %{time_total}s" $1 -s --output /dev/null)
    echo `date "+%H:%M:%S"`, $resp
    if  [ -z "$2" ]; then
      sleepTime=0.1
    else
      sleepTime=$2
    fi
    sleep $sleepTime
  done
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

iterm2_print_user_vars() {
  # extend this to add whatever
  # you want to have printed out in the status bar
  iterm2_set_user_var nodeVersion $(node -v)
  iterm2_set_user_var rubyVersion $(ruby --version | awk '{ print $2 }')
  iterm2_set_user_var pythonVersion $(python3 --version | awk '{ print $2 }')
}

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export GPG_TTY=$(tty)
export GEM_HOME="$HOME/.gem"

export PATH="$HOME/.gem/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.pyenv/versions/3.12.0/lib/python3.12/site-packages:$PATH"
export PATH=$(pyenv root)/shims:$PATH
