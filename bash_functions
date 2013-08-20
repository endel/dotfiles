#!/bin/bash

# Kill all processes by name
function killallp() {
  kill `ps -ef | grep $1 | grep -v grep | awk '{print $2}'`;
}

# Output local ip address
function ip() {
  echo `ifconfig | grep 192 | awk '{print $2}'`
}

# Create and enters into the directory
function mkcd() {
  mkdir $1 && cd $1
}

# Grep the history
function hgrep() {
  echo `history | grep $1 | awk "{print $3}\n"`
}

# Copy argument to the clipboard
function copy() {
  echo $1 | pbcopy
}

# Move and change extension
function mve() {
echo $1;
echo $2;
  for f in $1; do mv -i "$f" "${f%%.*}$2"; done
}
