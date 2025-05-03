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

# Limit 'cd' autocompletion to directories in the current working directory only
unset CDPATH

# Custom completion function for 'cd' to avoid adding a space after completion
_cd_only_current_dir() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local directories
    directories=$(compgen -d -- "$cur")

    # If a directory is found, don't append a space automatically
    COMPREPLY=( $directories )
}

# Apply the custom completion function to 'cd'
complete -F _cd_only_current_dir cdc

# Some more aliases
alias ll="ls -lhF"
alias la="ls -aF"
alias lla="ls -lAhF"

# User definitions
if [ ".bash_profile" ]; then
    . ~/.bash_profile
fi

# OhMyBash
if [ ".omb_profile" ]; then
    . ~/.omb_profile
fi
