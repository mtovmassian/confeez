#!/usr/bin/env bash 

LIB_DIR="${HOME}/confeez/lib"

print_command() {
  command="$1"
  local DEFAULT_COLOR=$(tput sgr0)
  local GREY_COLOR=$(tput setaf 245)
  echo $GREY_COLOR"${command}"$DEFAULT_COLOR
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[1;35m\]$(parse_git_branch)\[\033[00m\]\$ '

# SYSTEM ----------------------------------------
source "${LIB_DIR}"/system.sh

# FILE SYSTEM -----------------------------------
source "${LIB_DIR}"/file-system.sh

# GREP ------------------------------------------
source "${LIB_DIR}"/grep.sh

# HELP ------------------------------------------
source "${LIB_DIR}"/help.sh

# REMOTE ----------------------------------------
source "${LIB_DIR}"/remote.sh

# COMMONS----------------------------------------
source "${LIB_DIR}"/commons.sh

# GIT -------------------------------------------
source "${LIB_DIR}"/git.sh

# PYTHON ----------------------------------------
source "${LIB_DIR}"/python.sh

# DOCKER ----------------------------------------
source "${LIB_DIR}"/docker.sh

# AWS -------------------------------------------
source "${LIB_DIR}"/aws.sh

# PROJECT ---------------------------------------
source "${LIB_DIR}"/project.sh

