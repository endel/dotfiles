#!/bin/env bash

DARK_GRAY="\[\033[1;30m\]"
RED="\[\033[1;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
WHITE="\[\033[1;37m\]"
DEFAULT="\[\033[0;39m\]"
RESET="\[\033[0;00m\]"
PURPLE="\[\033[01;34m\]"

GIT_PS1_SHOWDIRTYSTATE=1
PS1="$YELLOW[\$(date +%k:%M:%S)] $GREEN\u:$PURPLE\w$MAGENTA\$(__git_ps1 ' [%s] ')\n$DARK_GRAY\$ $DEFAULT"
