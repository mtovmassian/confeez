#!/usr/bin/env bash

CONFEEZ_DIR=$(dirname $(readlink -f ${0}))
VIMRC_FILE="${HOME}/.vimrc"

link_vimrc() {
  if [[ -f "${VIMRC_FILE}" ]]; then rm "${VIMRC_FILE}"; fi
  ln -s ${HOME}/confeez/.vimrc "${VIMRC_FILE}"
}

init_confeez_file() {
  confeez_dir_assignement=$(sed "s/\//\\\\\//g" <<< "CONFEEZ_DIR=\"${CONFEEZ_DIR}\"")
  sed -i -e "s/CONFEEZ_DIR=.*/$confeez_dir_assignement/g" confeez.sh
}

source_confeez_file() {
  source_statement="source ${CONFEEZ_DIR}/confeez.sh"
  statement_exist=$(cat "${HOME}/.bashrc" | grep "${source_statement}")
  if [[ ${#statement_exist} -eq 0 ]]
  then
    printf "\n%s\n" "${source_statement}" >> ${HOME}/.bashrc
  fi
}

install() {
  init_confeez_file
  source_confeez_file
  link_vimrc
}

echo "This script will update you current .bashrc, and overwrite your .vimrc"
echo "Do you want to continue? Y/n"

read user_choice

if [[ "${user_choice}" == Y ]]
then
  install
else
  exit 0
fi
