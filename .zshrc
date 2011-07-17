# Path to your oh-my-zsh configuration.
export ZSH="$HOME/.oh-my-zsh"

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="kristi"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep

#zstyle ':completion:*' completer _expand _complete _ignored 
#zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

#autoload -Uz compinit
#compinit


alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

alias ls='ls --color'
alias la='ls -alh'
alias screen='screen -R -D'
alias untgz='tar zxvf'
alias untbz='tar jxvf'
alias untar='tar xvf'

alias -g L='|less -R'
alias -g H='|head'
alias -g T='|tail'

alias a='ack-grep'
alias ack='ack-grep'
alias aa='ack-grep --pager="less -R"'
