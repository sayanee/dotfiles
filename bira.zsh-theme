# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$fg[blue]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[green]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local node_version='%{$fg[red]%}<node-`node -v`>%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local time_now='%{$fg[black]%}%t%{$reset_color%}'

PROMPT="╭─${user_host} on${current_dir} ${rvm_ruby} ${node_version} ${git_branch}${time_now}
╰─%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
