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
alias ls='eza'
alias cat='bat'

# common git alias
alias ga='git add '
alias gb='git branch '
alias gc='git add . && git commit -m '
alias goo='git checkout '
alias gp='git pull && git push'
alias gr='git add -u && git commit -m '
alias gs='git status --untracked-files'

# killport 4000
killport() {
  kill -TERM `lsof -t -i:$1`
}

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
