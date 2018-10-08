#!/usr/bin/env bash

# firewall
update_firewall() {
  access_rule="${1}"
  port="${2}"
  ufw_command="sudo ufw ${access_rule} proto tcp to any port ${port}"
  print_command "${ufw_command}"
  eval "${ufw_command}"
}
alias ufw:status="print_command 'sudo ufw status numbered' && sudo ufw status numbered"

alias ufw:open="update_firewall allow"

alias ufw:close="update_firewall deny"

alias show:ports="netstat -tupln"

