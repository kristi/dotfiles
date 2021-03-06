# kristi's zsh theme
# some hybrid between gentoo and fishy

local user_color='green';
local server_color='blue';
local dir_color='green';
# show user in red if root
[ $UID -eq 0 ] && user_color='red'
# color strings
local RESET="%{$reset_color%}"

#PROMPT='%{$fg_bold[$user_color]%}%n@%m$RESET:%{$fg_bold[$dir_color]%}%~%{$reset_color%}
#%# '
local P='%{$fg_bold[$user_color]%}%n@%m%{$reset_color%}:%{$fg_bold[$dir_color]%}%~%{$reset_color%}'
PROMPT='%{$fg_bold[$server_color]%}[%m]$RESET%# '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
#RPS1='%{$fg_bold[$user_color]%}%n@%m$RESET:%{$fg_bold[$dir_color]%}%~%{$reset_color%}\
#%(?..%{$fg[red]%}%? err%{$reset_color%})$(git_prompt_info)'
RPS1='\
$(git_prompt_info)\
%{$fg_bold[$dir_color]%}%3~ $RESET\
%(?..%{$fg[red]%}%? err%{$reset_color%})\
'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
