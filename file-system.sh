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

go_up() {
  directories_number=$1
  if [ ! -z $directories_number ] && [ $directories_number -gt 1 ];
  then
    path=".."
    for i in $(eval echo {2..${directories_number}}); do
      path+="/.."
      echo $path
    done
    cd "${path}"
  else
    cd ..
  fi
}

alias ..="go_up"

alias home="cd ${HOME}"

alias dev="cd ${HOME}/dev"

alias dl="cd ${HOME}/downloads"

alias opt="cd /opt/"

alias mkdircd="mkdir_and_cd"

alias vimx="create_and_edit_executable_file"

alias rmall="print_command 'sudo rm -r' && sudo rm -r"
