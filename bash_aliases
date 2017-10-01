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
alias artisan="php artisan" # laravel

# Git
alias g="git"

#
# Utils
#
alias tcpd80="sudo tcpdump -s 0 -A -i lo0 -v 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias tcpd="sudo tcpdump -s 0 -A -i en1 -v 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias tcpd8080="sudo tcpdump -s 0 -A -i lo0 -v 'tcp port 8080 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias tcpd4665="sudo tcpdump -s 0 -A -i lo0 -v 'tcp port 4665 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias serve="python -m SimpleHTTPServer"

# Readline wrapper
alias rlw="rlwrap -a dummy "
alias irb="rlw irb"
alias mongo="rlw mongo"
alias redis-cli="rlw redis-cli"

# JavaScript
alias jsc="rlw /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"

# localtunnel (https://github.com/progrium/localtunnel)
# gem install localtunnel
#   Example: turn your 3000 public into the WWW.
#     lt 3000
alias lt="localtunnel -k ~/.ssh/id_rsa.pub "

# shortcut to iphone simulator
alias ios="open -a /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
