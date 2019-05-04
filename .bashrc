#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

shopt -s autocd

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

xhost +local:root > /dev/null 2>&1

complete -cf sudo
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend


ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

# Run neofetch to display stats
neofetch


