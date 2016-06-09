rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

node_current() {
	nvm version 2>/dev/null
}

PROMPT='%n: %{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$fg_bold[red]%}<$(rvm_current)> <node:$(node_current)>%{$reset_color%}
%{$fg_bold[grey]%}%*%{$reset_color%} $ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on%{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='%{$fg_bold[red]%}$(rbenv_version)%{$reset_color%}'
