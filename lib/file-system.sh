#!/usr/bin/env bash

mkdir_and_cd() {
  dirname="$1"
  print_command "mkdir ${dirname} && cd ${dirname}"
  mkdir "${dirname}" && cd "${dirname}"
}

mkdir_and_touch() {
  path="$1"
  mkdir -p "$(dirname "${path}")"
  touch "${path}"
}

create_and_edit_executable_file() {
  
  run() {
    echo "#!/usr/bin/env bash" > "${filename}"
    chmod +x "${filename}"
    vim "${filename}"
  }

  filename="$1"
  if [[ -f "${filename}" ]]
  then
    echo "${filename} already exits. Do you want to overwrite it? Y/n"
    read user_choice
    if [[ "${user_choice}" == Y ]]
    then
      run
    fi
  else
    run
  fi
}

cd_up() {
  directories_number=$1
  if [ ! -z $directories_number ] && [ $directories_number -gt 1 ];
  then
    path=".."
    for i in $(eval echo {2..${directories_number}}); do
      path+="/.."
    done
    print_command "cd ${path}"
    cd "${path}"
  else
    cd ..
  fi
}

pwd_up() {
  directories_number=$1
  if [ ! -z $directories_number ] && [ $directories_number -gt 1 ];
  then
    path=".."
    for i in $(eval echo {2..${directories_number}}); do
      path+="/.."
    done
    echo $(cd "${path}" && pwd)
  else
    echo $(cd .. && pwd)
  fi
}

export_python_path() {
  local working_dir="$1"
  print_command "export PYTHONPATH=$PYTHONPATH:${working_dir}"
  export PYTHONPATH=$PYTHONPATH:${working_dir}
}

alias ..="cd_up"

alias pwd..="pwd_up"

alias home="cd ${HOME}"

alias dev="cd ${HOME}/dev"

alias data="cd ${HOME}/data"

alias dl="cd ${HOME}/downloads"

alias opt="cd /opt/"

alias mkdircd="mkdir_and_cd"

alias mkdirtouch="mkdir_and_touch"

alias vimx="create_and_edit_executable_file"

alias rmr="rm -r"

alias encoding="file -i"

alias pypath="export_python_path"
