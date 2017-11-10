#!/usr/bin/env bash

get_current_branch() {
  echo $(git branch | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
}

git_pull() {
  current_branch="$(get_current_branch)"
  git pull origin "${current_branch}"
}

git_push() {
  current_branch="$(get_current_branch)"
  git push origin "${current_branch}"
}


git_flow_finish_branch() {
  current_branch="$(get_current_branch)"
  branch_type="$(echo ${current_branch} | grep -oE '\w+/' | grep -oE '\w+')"
  branch_name="$(echo ${current_branch} | grep -oE '/\w+$' | grep -oE '\w+')"
  git flow "${branch_type}" finish "${branch_name}"
}

alias git:log="git log --graph"

alias git:ck="git checkout"

alias git:ckbr="git checkout -b"

alias git:br="git branch"

alias git:br:del="git branch -d"

alias git:com="git commit -am"

alias git:st="git status"

alias git:push="git_push"

alias git:pull="git_pull"

alias gitf="git flow"

alias gitf:f="git flow feature start"

alias gitf:r="git flow release start"

alias gitf:finish="git_flow_finish_branch"


