# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source /Users/Alexander/.antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found

# Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme bira
antigen apply

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if type nvim > /dev/null 2>&1; then
    alias vim='nvim'
fi

# Common commands
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
alias off="halt -p"
alias vim="nvim"
alias v="nvim"

# File paths
alias tum='cd ~/Nextcloud/Local/TUM/2.Semester'
alias linalg='cd ~/Nextcloud/Local/TUM/2.Semester/LINALG/'
alias grnvs='cd ~/Nextcloud/Local/TUM/2.Semester/GRNVS/'
alias eist='cd ~/Nextcloud/Local/TUM/2.Semester/EIST/'
alias it='cd ~/Nextcloud/Local/TUM/2.Semester/Italienisch\ A1.2/'
alias gad='cd ~/Nextcloud/Local/TUM/2.Semester/GAD/'
alias erap='cd ~/Nextcloud/Local/TUM/2.Semester/ERA-Praktikum/'
alias rechnerhalle='ssh stephaal@lxhalle.in.tum.de'

export GOPATH=~/Nextcloud/Local/Programming/go
export PATH=$PATH:$(go env GOPATH)/bin
bindkey -v

# Zsh settings for history
HISTORY_IGNORE="(ls|[bf]g|exit|reset|clear|cd|cd ..|cd..)"
HISTSIZE=25000
HISTFILE=~/.zsh_history
SAVEHIST=100000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# nf [-NUM] [COMMENTARY...] -- never forget last N commands
nf() {
  local n=-1
  [[ "$1" = -<-> ]] && n=$1 && shift
  fc -lnt ": %Y-%m-%d %H:%M ${*/\%/%%} ;" $n | tee -a .neverforget
}

# Say how long a command took, if it took more than 30 seconds
export REPORTTIME=30

# Colour output on Mac OS
export CLICOLOR=1
