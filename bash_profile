#!/bin/env bash

# brew install bash-completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Helpers
source ~/dotfiles/history
source ~/dotfiles/gist
source ~/dotfiles/bash_functions
source ~/dotfiles/bash_aliases
source ~/dotfiles/bash_plugins
source ~/dotfiles/ps1
source ~/dotfiles/php

# VI mode! Yey!
set -o vi
git config --global core.editor "/usr/bin/vim"

# User bin path
export PATH=$PATH:/$HOME/bin
export LOLCOMMITS_DELAY=2

# Setup Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
