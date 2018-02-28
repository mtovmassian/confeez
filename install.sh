#!/usr/bin/env bash

BASH_ALIASES_FILE="${HOME}/.bash_aliases"
VIMRC_FILE="${HOME}/.vimrc"

link_bash_aliases() {
  if [[ -f "${BASH_ALIASES_FILE}" ]]; then rm "${BASH_ALIASES_FILE}"; fi
  ln -s ${HOME}/confeez/.bash_aliases "${BASH_ALIASES_FILE}"
}

link_vimrc() {
  if [[ -f "${VIMRC_FILE}" ]]; then rm "${VIMRC_FILE}"; fi
  ln -s ${HOME}/confeez/.vimrc "${VIMRC_FILE}"
}

source_ps1() {
  source_ps1_statement="source ${HOME}/confeez/ps1.sh"
  statement_exist=$(cat "${HOME}/.bashrc" | grep "${source_ps1_statement}")
  if [[ ${#statement_exist} -eq 0 ]]
  then
    printf "\n%s\n" "${source_ps1_statement}" >> ${HOME}/.bashrc
  fi
}

install() {
  link_bash_aliases
  link_vimrc
  source_ps1
}

echo "This script will overwrite/update you current .bashrc, .bash_aliases and .vimrc files"
echo "Do you want to continue? Y/n"

read user_choice

if [[ "${user_choice}" == Y ]]
then
  install
else
  exit 0
fi
