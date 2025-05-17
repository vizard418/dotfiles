# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
fi
unset color_prompt


# Some more aliases
alias ll="ls -lhF"
alias la="ls -aF"
alias lla="ls -lAhF"


# History configuration
HISTCONTROL=ignoreboth        # ignore duplicates and lines starting with space
shopt -s histappend           # append to history file instead of overwriting
HISTSIZE=1000
HISTFILESIZE=2000

# Update window size after each command
shopt -s checkwinsize

# Clear CDPATH to avoid unexpected behavior with 'cd'
unset CDPATH

# Load user-defined aliases if present
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# Enable bash completion if available
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Load Oh My Bash if present
[ -f ~/.omb_profile ] && . ~/.omb_profile

