#!/usr/bin/env bash

print_colors() {
  for i in {0..255}
  do
    echo $(tput setaf $i)"COLOR CODE: $i"
  done
}

reload_bash() {
  print_command "source ~/.bashrc"
  source ~/.bashrc
}

alias cl="clear"

alias colors="print_colors"

alias copy="xclip -selection clipboard"

alias reloadsh="reload_bash"

alias watch="htop"

alias down="print_command 'sudo shutdown now' && sudo shutdown now"

alias lock="gnome-screensaver-command --lock"

alias exportpy="print_command 'export PYTHONPATH=$PYTHONPATH:$(pwd)' && export PYTHONPATH=$PYTHONPATH:$(pwd)"
