if status is-interactive
    # Commands to run in interactive sessions can go here
end

# https://wiki.archlinux.org/title/XDG_Base_Directory#Specification
set -q XDG_CACHE_HOME || set -U XDG_CACHE_HOME $HOME/.cache
set -q XDG_CONFIG_HOME || set -U XDG_CONFIG_HOME $HOME/.config
set -q XDG_DATA_HOME || set -U XDG_DATA_HOME $HOME/.local/share
set -q XDG_RUNTIME_DIR || set -U XDG_RUNTIME_DIR $HOME/.xdg

set -q ANSIBLE_STDOUT_CALLBACK || set -U ANSIBLE_STDOUT_CALLBACK yaml

# Add local bin to $PATH
set -Ua fish_user_paths $HOME/.local/bin

# Default editor nvim
set -x EDITOR nvim

# suppress the default login message
set -g fish_greeting
