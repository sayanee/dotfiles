# ln -s sayanee.zsh-theme ~/.oh-my-zsh/themes/sayanee.zsh-theme
rvm_current() {
  rvm current 2>/dev/null
}

node_current() {
	node -v 2>/dev/null
}

PROMPT='%n: %{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$fg_bold[red]%}<$(rvm_current)> <node:$(node_current)>%{$reset_color%}
%{$fg_bold[green]%}%*%{$reset_color%} $ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on%{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
