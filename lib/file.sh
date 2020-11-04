#!/usr/bin/env bash

mkdir_and_cd() {
  dirname="$1"
  print_command "mkdir ${dirname} && cd ${dirname}"
  mkdir "${dirname}" && cd "${dirname}"
}

mkdir_and_touch_file() {
  path="$1"
  mkdir -p "$(dirname "${path}")" && touch "${path}"
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

copy_files_with_space_proof() {
    output_dir="$1"
    find . -type f -name '*.*' -print0 | while IFS= read -r -d '' file; do mv "$file" "${output_dir}${file}"; done
}


alias ..="cd_up"

alias pwd..="pwd_up"

alias home="cd ${HOME}"

alias dev="cd ${HOME}/dev"

alias proj="cd ${HOME}/dev/projects"

alias dd="cd ${HOME}/dry-dock"

alias tl="cd ${HOME}/dev/tech-lead"

alias data="cd ${HOME}/data"

alias dl="cd ${HOME}/downloads"

alias opt="cd /opt/"

alias mkdircd="mkdir_and_cd"

alias mkdirf="mkdir_and_touch_file"

alias vimx="create_and_edit_executable_file"

alias rmr="rm -r"

alias encoding="file -i"
