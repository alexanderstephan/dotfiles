set -gx EDITOR nvim
set -gx PATH /opt/gcc-11.1/bin /opt/riscv-gnu-toolchain/bin /opt/qemu-riscv/bin $PATH 
set -gx LD_LIBRARY_PATH /opt/gcc-11.1/lib64 $LD_LIBRARY_PATH
set -gx PATH /opt/gcc-11.1/bin_defaults $PATH
set -gx PATH /bin $PATH

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
