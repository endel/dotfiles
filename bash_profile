#!/bin/env bash

# brew install bash-completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# helpers
source ~/dotfiles/history
source ~/dotfiles/gist
source ~/dotfiles/bash_functions
source ~/dotfiles/bash_aliases
source ~/dotfiles/bash_plugins
source ~/dotfiles/ps1
source ~/dotfiles/php

# VI mode! Yey!
set -o vi

# user bin path
export PATH=$PATH:/$HOME/bin

# export MAMP's lastest PHP version.
export PATH=$PATH:/Applications/MAMP/bin/php/php5.5.3/bin

export LOLCOMMITS_DELAY=2

# setup rvm.io
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# load node version manager
source ~/.nvm/nvm.sh
