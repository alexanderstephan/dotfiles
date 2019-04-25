#
# ~/.bashrc
#


shopt -s autocd

[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias ls="ls --color=auto" 
alias grep="grep --color=auto" 
alias diff="diff --color=auto"  
alias up="sudo ip link set wlp3s0 up && sudo ip link enp0s25 up" 
alias ka="killall" 
alias down="sudo ip link set wlp3s0 down && sudo ip link set enp0s25 down" 
alias g="git" 
alias ga="git add *" 
alias xx="xrdb ~/.Xresources"
alias p="sudo pacman" 
alias yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'" 
alias YT="youtube-viewer" 
alias school="cd ~/Nextcloud/Documents/Schule/" 
alias seminar="vim ~/Nextcloud/Documents/Schule/FOS13/Seminararbeit/main.tex" 
alias sc="vim ~/.config/sway/config" 


# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

neofetch


