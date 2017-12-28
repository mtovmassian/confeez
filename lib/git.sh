#!/usr/bin/env bash

get_current_branch() {
  echo $(git branch | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
}

git_checkout() {
  local branch=""
  if [ "$1" = "-b" ]
  then
    branch="$2"
    print_command "git checkout -b ${branch}"
    git checkout -b "${branch}"
  else
    local branch="$1"
    print_command "git checkout ${branch}"
    git checkout "${branch}"
  fi
}

git_commit() {
  local commit_message="$1"
  print_command "git commit -am \"${commit_message}\""
  git commit -am "${commit_message}"
}

git_pull() {
  local current_branch="$(get_current_branch)"
  print_command "git pull origin ${current_branch}"
  git pull origin "${current_branch}"
}

git_push() {
  local current_branch="$(get_current_branch)"
  print_command "git push origin ${current_branch}"
  git push origin "${current_branch}"
}

git_clone_and_cd() {
  local clone_link="$1"
  if [ "$#" -gt 1 ]
  then
    directory_name="$2"
  else
    directory_name="$(echo ${clone_link} | grep -oE '[a-zA-Z0-9\_\-]*\.git' | grep -oE '.*[^.git]')"
  fi
  print_command "git clone ${clone_link} ${directory_name} && cd ${directory_name}"
  git clone "${clone_link}" "${directory_name}" && cd "${directory_name}"
}

git_flow_start_branch() {
  local branch_name="$2"
  local branch_type=""
  if [ "$1" = "feature" ]
  then
    branch_type="feature"
  elif [ "$1" = "release" ]
  then
    branch_type="release"
  fi
  print_command "git flow ${branch_type} start ${branch_name}"
  git flow "${branch_type}" start "${branch_name}"
}

git_flow_finish_branch() {
  local current_branch="$(get_current_branch)"
  local branch_type="$(echo ${current_branch} | grep -oE '\w+/' | grep -oE '\w+')"
  local branch_name="$(echo ${current_branch} | grep -oE '/\w+$' | grep -oE '\w+')"
  print_command "git flow ${branch_type} finish ${branch_name}"
  git flow "${branch_type}" finish "${branch_name}"
}

alias git:log="print_command 'git log --graph' && git log --graph"

alias git:ck="git_checkout"

alias git:b="git_branch"

alias git:com="git_commit"

alias git:push="git_push"

alias git:pull="git_pull"

alias git:clone="git_clone_and_cd"

alias gitf="git flow"

alias gitf:f="git_flow_start_branch feature"

alias gitf:r="git flow start_branch release"

alias gitf:finish="git_flow_finish_branch"

