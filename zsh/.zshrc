source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme takashiyoshida
antigen apply

# Common commands
alias ls="ls --color=auto" 
alias grep="grep --color=auto" 
alias diff="diff --color=auto"  
alias up="sudo ip link set wlp3s0 up && sudo ip link set enp0s25 up" 
alias down="sudo ip link set wlp3s0 down && sudo ip link set enp0s25 down" 
alias ka="killall" 
alias h="history"
alias c="clear"
alias p="cat"
alias null="/dev/null"
alias ga="git add *" 
alias xx="xrdb ~/.Xresources"
alias p="sudo pacman" 
alias yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'" 
alias YT="youtube-viewer" 
alias pi="ssh pi@raspberrypi"

# Quickly edit files
alias seminar="vim ~/Nextcloud/Documents/Schule/FOS13/Seminararbeit/main.tex" 
alias sc="vim ~/.config/sway/config" 
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"

# Git
alias g="git"
alias st="git status"
alias com="git commit -m"
alias clone="git clone"
alias sth="git stash"
alias lg="git log"
alias u="git add -u"
alias all="git add ."

# Directories
alias school="cd ~/Nextcloud/Documents/Schule/" 
alias cloud="cd ~/Nextcloud"
alias edubot="cd ~/Programming/edubot"
alias dotfiles="cd ~/Programming/dotfiles"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
