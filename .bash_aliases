SCRIPTS_DIR="${HOME}/.scripts"

print_command() {
  command="$1"
  local DEFAULT_COLOR=$(tput sgr0)
  local GREY_COLOR=$(tput setaf 245)
  echo $GREY_COLOR"${command}"$DEFAULT_COLOR
}

# File system
source "${SCRIPTS_DIR}"/file-system.sh

# GREP
source "${SCRIPTS_DIR}"/grep.sh

# Remote machines
source "${SCRIPTS_DIR}"/remote.sh

# Commons
source "${SCRIPTS_DIR}"/commons.sh

# Git commands
source "${SCRIPTS_DIR}"/git.sh

# Docker commands
source "${SCRIPTS_DIR}"/docker.sh

# AWS commands
source "${SCRIPTS_DIR}"/aws.sh

# Project BCTP
source "${SCRIPTS_DIR}"/bctp.sh

# Project SIE
source "${SCRIPTS_DIR}"/sie.sh
