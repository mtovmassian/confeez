#!/usr/bin/env bash

clear_web_session() {

  firefox_cookies_db="~/.mozilla/firefox/jyn166e2.default/cookies.sqlite"
  clear_google_cookies="sqlite3 ${firefox_cookies_db} \"delete from moz_cookies where baseDomain like '%google%'\""
  eval "${clear_google_cookies}"

}

update_firewall() {
  access_rule="${1}"
  port="${2}"
  ufw_command="sudo ufw ${access_rule} proto tcp to any port ${port}"
  print_command "${ufw_command}"
  eval "${ufw_command}"
}

alias proc="htop"

alias gproc="gnome-system-monitor"

alias arch="print_command 'lscpu' && lscpu"

alias mem="print_command 'free -ht' && free -ht"

alias sctl="systemctl"

alias start:mongo="sudo systemctl start mongod"

alias start:rabbitmq="sudo systemctl start rabbitmq-server"

alias dfh="df -h"

alias dush="du -sh"

alias ufw:status="print_command 'sudo ufw status numbered' && sudo ufw status numbered"

alias ufw:open="update_firewall allow"

alias ufw:close="update_firewall deny"

alias lock="gnome-screensaver-command --lock" 

alias down="print_command 'sudo shutdown now' && sudo shutdown now"

alias reboot="print_command 'sudo reboot' && sudo reboot"

alias update="print_command 'sudo apt-get update && sudo apt-get upgrade -y' && sudo apt-get update && sudo apt-get upgrade -y"
