#!/usr/bin/env bash

clear_web_session() {

  firefox_cookies_db="~/.mozilla/firefox/jyn166e2.default/cookies.sqlite"
  clear_google_cookies="sqlite3 ${firefox_cookies_db} \"delete from moz_cookies where baseDomain like '%google%'\""
  eval "${clear_google_cookies}"

}

# memory
alias show:mem="print_command 'free -ht' && free -ht"

# disk
alias show:diskf="df -h"

alias show:disku="du -sh"

# process
alias show:proc="htop"

alias show:proc:gui="gnome-system-monitor"

alias show:arch="lscpu"

alias sctl="systemctl"

alias start:mongo="sudo systemctl start mongod"

alias start:rabbitmq="sudo systemctl start rabbitmq-server"

# machine
alias lock="gnome-screensaver-command --lock" 

alias down="sudo shutdown now"

alias reboot="sudo reboot"

alias update="sudo apt-get update && sudo apt-get upgrade -y"

alias clean="sudo apt-get autoclean && sudo apt-get clean && sudo apt-get autoremove"
