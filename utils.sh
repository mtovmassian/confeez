#!/usr/bin/env bash

print_colors() {
  for i in {0..255}
  do 
    echo $(tput setaf $i)"COLOR CODE: $i"
  done 
}

mkdir_and_cd() {
  dirname="$1"
  mkdir "${dirname}" && cd "${dirname}"
}

alias cl="clear"
alias colors="print_colors"
alias mkdircd="mkdir_and_cd"
alias copy="xclip -selection clipboard"
