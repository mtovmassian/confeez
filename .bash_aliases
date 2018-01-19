#!/usr/bin/env bash 

LIB_DIR="${HOME}/.scripts/lib"

print_command() {
  command="$1"
  local DEFAULT_COLOR=$(tput sgr0)
  local GREY_COLOR=$(tput setaf 245)
  echo $GREY_COLOR"${command}"$DEFAULT_COLOR
}

# System
source "${LIB_DIR}"/system.sh

# File system
source "${LIB_DIR}"/file-system.sh

# GREP
source "${LIB_DIR}"/grep.sh

# Help
source "${LIB_DIR}"/help.sh

# Remote machines
source "${LIB_DIR}"/remote.sh

# Commons
source "${LIB_DIR}"/commons.sh

# Git commands
source "${LIB_DIR}"/git.sh

# Docker commands
source "${LIB_DIR}"/docker.sh

# AWS commands
source "${LIB_DIR}"/aws.sh

# Project BCTP
source "${LIB_DIR}"/bctp.sh

# Project SIE
source "${LIB_DIR}"/sie.sh

# Project Labels240
source "${LIB_DIR}"/labels240.sh*

# Project SmartEchange
source "${LIB_DIR}"/smart-exchange.sh
