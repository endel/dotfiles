#!/bin/bash

function killallp() {
  kill `ps -ef | grep $1 | grep -v grep | awk '{print $2}'`;
}

function ip() {
  echo `ifconfig | grep 192 | awk '{print $2}'`
}

function mkcd() {
  mkdir $1 && cd $1
}

function hgrep() {
  echo `history | grep $1 | awk "{print $3}\n"`
}

function copy() {
  echo $1 | pbcopy
}
