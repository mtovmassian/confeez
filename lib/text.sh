#!/usr/bin/env bash

alias hig="history | grep"

alias psg="ps -auwx | grep"

alias lsg="ls -alFh | grep"

alias aliasg="alias | grep"

alias netg="netstat -tulpn | grep"

alias pkjsong="cat package.json | grep"

extract_column() {
  local col_index="$1"
  local separator=" "
  if [ $# -eq 2 ]
  then
    separator="$2"
  fi
  awk -F ''"${separator}"'' '{print $'${col_index}'}'
}

alias col="extract_column"

