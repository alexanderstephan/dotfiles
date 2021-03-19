source ~/.antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found

# Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme philips
antigen apply

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

## User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if type nvim > /dev/null 2>&1; then
    alias vim='nvim'
fi

# Include all important alias
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# You might not want this
export GOPATH=~/Programming/go
export PATH=$PATH:$(go env GOPATH)/bin

# Enable vim bindings
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
system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
    # Colour output on Mac OS
    export CLICOLOR=1
    [ -f "/Users/alexander/.ghcup/env" ] && source "/Users/alexander/.ghcup/env" # ghcup-env
    export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
    PATH=$PATH:/Users/alexander/.local/bin/
fi
