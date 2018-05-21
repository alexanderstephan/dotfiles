#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#export EDITOR = 'vim'
#export GIT_EDITOR = 'vim'
#export ARCHFLAGS = "-arch x86_64"
set -o vi
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

#(cat ~/.config/wpg/sequences &)
