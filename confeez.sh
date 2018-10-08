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

import_lib() {
	for file in $(ls "${CONFEEZ_DIR}"/lib/ | grep -E '.*\.sh')
	do
		source "${CONFEEZ_DIR}"/lib/"${file}"
	done
}

import_lib

