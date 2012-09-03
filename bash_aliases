#!/bin/env bash

alias mkdir="mkdir -p"
alias dutree="du -s -m *"
alias ls='ls -G'
alias pwdc="pwd | pbcopy"

# Ruby / RVM
alias binstall="bundle install --binstubs"
alias r="rails"
alias rk="rake"
alias o="open"
alias jspec="bundle exec jasmine-headless-webkit --color"

# Readline wrapper
alias rlw="rlwrap -a dummy "

# DNS
alias dnsflush="dscacheutil -flushcache"

# localtunnel (https://github.com/progrium/localtunnel)
# gem install localtunnel
#   Example: turn your 3000 public into the WWW.
#     lt 3000
alias lt="localtunnel -k ~/.ssh/id_rsa.pub "
