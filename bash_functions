#!/bin/bash

function killallp() {
  kill `ps -ef | grep $1 | grep -v grep | awk '{print $2}'`;
}

function ip() {
  echo `ifconfig | grep 192 | awk '{print $2}'`
}

function copy() {
  echo $1 | pbcopy
}
