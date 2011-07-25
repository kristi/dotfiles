# kristi's zsh theme
# some hybrid between gentoo and fishy

local user_color='green';
local dir_color='blue';
# show user in red if root
[ $UID -eq 0 ] && user_color='red'
# color strings
local RESET="%{$reset_color%}"

PROMPT='%{$fg_bold[$user_color]%}%n@%m$RESET:%{$fg_bold[$dir_color]%}%~%{$reset_color%}
%# '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%(?..%{$fg[red]%}%? err%{$reset_color%})$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
