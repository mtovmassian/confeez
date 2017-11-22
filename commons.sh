#!/usr/bin/env bash

print_colors() {
  for i in {0..255}
  do
    echo $(tput setaf $i)"COLOR CODE: $i"
  done
}

reload_bash() {
  echo source ~/.bashrc
  source ~/.bashrc
}

alias cl="clear"

alias colors="print_colors"

alias copy="xclip -selection clipboard"

alias reloadsh="reload_bash"

alias watch="htop"

alias down="sudo shutdown now"

alias lock="gnome-screensaver-command --lock"

alias exportpy="export PYTHONPATH=$PYTHONPATH:$(pwd)"
