#!/bin/bash

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias snow="sudo shutdown now"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -la'
alias grep="grep --color=auto"
alias diff="diff --color=auto"

alias vim="nvim"
alias vi="nvim"
export EDITOR=nvim
export PATH="$PATH:$HOME/opt/flutter/bin"
