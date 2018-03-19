#!/usr/bin/env bash 

CONFEEZ_DIR="/home/martin/confeez"
alias confeez="cd ${CONFEEZ_DIR}"

print_command() {
  command="$@"
  local DEFAULT_COLOR=$(tput sgr0)
  local GREY_COLOR=$(tput setaf 245)
  echo $GREY_COLOR"${command}"$DEFAULT_COLOR
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[1;35m\]$(parse_git_branch)\[\033[00m\]\$ '

# SYSTEM ----------------------------------------
source "${CONFEEZ_DIR}"/lib/system.sh

# FILE SYSTEM -----------------------------------
source "${CONFEEZ_DIR}"/lib/file-system.sh

# GREP ------------------------------------------
source "${CONFEEZ_DIR}"/lib/grep.sh

# HELP ------------------------------------------
source "${CONFEEZ_DIR}"/lib/help.sh

# REMOTE ----------------------------------------
source "${CONFEEZ_DIR}"/lib/remote.sh

# COMMONS----------------------------------------
source "${CONFEEZ_DIR}"/lib/commons.sh

# GIT -------------------------------------------
source "${CONFEEZ_DIR}"/lib/git.sh

# PYTHON ----------------------------------------
source "${CONFEEZ_DIR}"/lib/python.sh

# DOCKER ----------------------------------------
source "${CONFEEZ_DIR}"/lib/docker.sh

# AWS -------------------------------------------
source "${CONFEEZ_DIR}"/lib/aws.sh

# PROJECT ---------------------------------------
source "${CONFEEZ_DIR}"/lib/project.sh

