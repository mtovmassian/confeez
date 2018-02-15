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

install() {
  link_bash_aliases
  link_vimrc
}

echo "This script will overwrite you current .bash_aliases and .vimrc files."
echo "Do you want to continue? Y/n"

read user_choice

if [[ "${user_choice}" == Y ]]
then
  install
else
  exit 0
fi
