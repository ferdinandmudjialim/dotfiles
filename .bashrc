#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Set Bash language to English
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Powerline for bash
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# Export pip programs to PATH (for virtualenv usage in terminal and such)
export PATH="$HOME/.local/bin:$PATH"

# Using git alias to version control dotfiles
# Taken from the Arch wiki https://wiki.archlinux.org/index.php/Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
