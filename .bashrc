#!/bin/bash

neofetch

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


#######################################################
# EXPORTS
#######################################################
# Custom prompt
export PS1='\[\e[38;5;46m\][\[\e[38;5;47m\]\A\[\e[38;5;46m\]] \[\e[97;1;3m\]\u\[\e[23m\]@\[\e[93m\]\h\[\e[39m\]/\[\e[0;96;3m\]\W\[\e[0;2m\]\\$ \[\e[0m\]'

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'
