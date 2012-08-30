#!/bin/bash

function killallp() {
  echo $1;
  kill `ps -ef | grep $1 | grep -v grep | awk '{print $2}'`;
}
