#!/bin/env bash

# System
alias mkdir="mkdir -p"
alias dutree="du -s -m *"
alias ls='ls -G'
alias pwdc="pwd | pbcopy"
alias dnsflush="dscacheutil -flushcache"
alias l="ls -las"

# Ruby / RVM
alias binstall="bundle install --binstubs"
alias r="rails"
alias rk="rake"
alias o="open"
alias jspec="bundle exec jasmine-headless-webkit --color"

# PHP
alias composer="composer.phar"
alias artisan="php artisan" # laravel

# Git
alias g="git"

#
# Utils
#
alias tcpd80="sudo tcpdump -s 0 -A -i lo0 -v 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias serve="python -m SimpleHTTPServer"

# Readline wrapper
alias rlw="rlwrap -a dummy "
alias irb="rlw irb"
alias jsc="rlw jsc"
alias mongo="rlw mongo"
alias redis-cli="rlw redis-cli"

# localtunnel (https://github.com/progrium/localtunnel)
# gem install localtunnel
#   Example: turn your 3000 public into the WWW.
#     lt 3000
alias lt="localtunnel -k ~/.ssh/id_rsa.pub "

# shortcut to iphone simulator
alias iphone="open -a iPhone\ Simulator"
