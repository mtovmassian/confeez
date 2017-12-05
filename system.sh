#!/usr/bin/env bash

alias top="htop"

alias sctl="systemctl"                                                                                                                                                  

alias sctl:s="print_command 'sudo systemctl start' && sudo systemctl start"

alias sctl:rs="print_command 'sudo systemctl restart' && sudo systemctl restart"

alias lock="gnome-screensaver-command --lock" 

alias down="print_command 'sudo shutdown now' && sudo shutdown now"
