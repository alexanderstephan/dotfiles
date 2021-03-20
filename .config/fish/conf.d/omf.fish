# Disable fish greeting
set -U fish_greeting

# Set default programs
set EDITOR "nvim"
set TERM "kitty"

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Load file with all aliases
source ~/.alias
