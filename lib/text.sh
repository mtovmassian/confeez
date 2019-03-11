#!/usr/bin/env bash

alias higrep="history | grep"

alias psgrep="ps -auwx | grep"

alias lsgrep="ls -alFh | grep"

alias aliasgrep="alias | grep"

alias netgrep="netstat -tulpn | grep"

alias pkgrep="cat package.json | grep"

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

