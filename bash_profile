#!/bin/env bash

# Helpers
source ~/dotfiles/history
source ~/dotfiles/ps1
source ~/dotfiles/gist
source ~/dotfiles/alias

# User bin path
export PATH=$PATH:/$HOME/bin

# Setup Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
