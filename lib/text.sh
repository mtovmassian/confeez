#!/usr/bin/env bash

alias like="| grep"

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

python_urlencode() {
    url="$@"
    python -c 'import sys; from urllib.parse import quote; print(quote(" ".join(sys.argv[1:])))' "$url"
}

last_word() {
  read text
  text_length="$(echo ${text} | wc -w)"
  echo "$text" | cut -d' ' -f"$text_length"
}

alias col="extract_column"

alias henry="grep -Hnry"

alias head20="head -n 20"

alias head30="head -n 30"

alias head50="head -n 50"
