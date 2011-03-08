# kristi's zsh theme
# some hybrid between gentoo and fishy

local user_color='green';
local dir_color='blue';
[ $UID -eq 0 ] && user_color='red'
PROMPT='%{$fg_bold[$user_color]%}%n@%m %{$fg_bold[$dir_color]%}%~%{$reset_color%} %# '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%(?..%{$fg[red]%}%? err%{$reset_color%})$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
