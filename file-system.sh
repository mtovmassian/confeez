#!/usr/bin/env bash

mkdir_and_cd() {
  dirname="$1"
  print_command "mkdir ${dirname} && cd ${dirname}"
  mkdir "${dirname}" && cd "${dirname}"
}

create_and_edit_executable_file() {
  filename="$1"
  echo "#!/usr/bin/env bash" > "${filename}"
  chmod +x "${filename}"
  vim "${filename}"
}

alias home="cd ${HOME}"

alias dev="cd ${HOME}/dev"

alias mkdircd="mkdir_and_cd"

alias vimx="create_and_edit_executable_file"

alias rmall="print_command 'sudo rm -r' && sudo rm -r"
