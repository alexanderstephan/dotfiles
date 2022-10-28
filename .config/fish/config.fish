set -gx EDITOR nvim
# set -gx PATH /opt/gcc-11.1/bin /opt/riscv-gnu-toolchain/bin /opt/qemu-riscv/bin $PATH 
# set -gx LD_LIBRARY_PATH /opt/gcc-11.1/lib64 $LD_LIBRARY_PATH
# set -gx PATH /opt/gcc-11.1/bin_defaults $PATH
set -gx PATH /bin $PATH
set -gx PATH $PATH $GOPATH/bin

if test -f /home/alex/.autojump/share/autojump/autojump.fish; . /home/alex/.autojump/share/autojump/autojump.fish; end

fish_vi_key_bindings
# [ -f /usr/share/autojump/autojump.fish ];
# source /usr/share/autojump/autojump.fish
# source ~/.alias
function fish_mode_prompt
  # Turns off mode indicator
end

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# System updates
alias up='sudo yay -Syyu'
alias aurup='sudo yay -Ayyu'
alias mirrors='sudo pacman-mirrors --fasttrack && sudo pacman -Syyu'

# Get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# Get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# Git
alias gaddup='git add -u'
alias gaddall='git add .'
alias gbranch='git branch'
alias gcheckout='git checkout'
alias gcl='git clone'
alias gcommit='git commit -m'
alias gfetch='git fetch'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gstat='git status'  # 'status' is protected name so using 'stat' instead
alias gtag='git tag'
alias gnewtag='git tag -a'
alias gpall='git add . && git commit -m "Update" && git push' # Quick and dirty push for exams
alias gtrack="git ls-tree -r master --name-only"


# youtube-dl
alias yta-best="youtube-dl --extract-audio --audio-format aac"
alias yta-best="youtube-dl --extract-audio --audio-format best"
alias yta-flac="youtube-dl --extract-audio --audio-format flac"
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a"
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3"
alias yta-opus="youtube-dl --extract-audio --audio-format opus"
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis"
alias yta-wav="youtube-dl --extract-audio --audio-format wav"
alias ytv-best="youtube-dl -f bestvideo+bestaudio"

# Kitten shortcuts
alias icat="kitty +kitten icat"
alias idiff="kitty +kitten diff"
alias iclip="kitty + kitten clipboard"
alias issh="kitty +kitten ssh"

# GPG
alias lsgpg="gpg --list-secret-keys --keyid-format=long"

# AUR
alias yu='yay -Syua'        # Synchronize with repositories and upgrade packages, including AUR packages.
alias yi='yay -S'           # Install a specific package from repos added to the system
alias yil='yay -U'          # Install specific package that has been downloaded to the local system
alias yr='yay -R'           # Remove package but retain configs and required dependencies
alias yrall='yay -Rns'      # Remove package or packages , its configuration and all unwanted dependencies
alias yip='yay -Si'         # Display information about a given package located in the repositories
alias ys='yay -Ss'          # Search for package or packages in the repositories
alias yil='yay -Qi'         # Display information about a given package in the local database
alias ysl='yay -Qs'         # Search for package(s) in the local database
alias yll='yay -Qe'         # List installed packages, even those installed from AUR (they're tagged as "local")
alias yro='yay -Qtd'        # Remove orphans using yay
