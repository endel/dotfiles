#!/bin/env bash

# Helpers
source ~/dotfiles/history
source ~/dotfiles/ps1
source ~/dotfiles/gist
source ~/dotfiles/bash_functions
source ~/dotfiles/bash_aliases

# VI mode! Yey!
set -o vi
git config --global core.editor "/usr/bin/vim"

# User bin path
export PATH=$PATH:/$HOME/bin

# Setup Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
