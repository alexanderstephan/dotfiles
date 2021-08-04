set -gx EDITOR nvim
fish_vi_key_bindings
source ~/.alias
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
