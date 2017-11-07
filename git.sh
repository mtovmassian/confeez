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

alias git:log="git log --graph"

alias git:ck="git checkout"

alias git:b="git branch"

alias git:b:new="git checkout -b"

alias git:b:del="git branch -d"

alias git:cm="git commit -am"

alias git:push="git_push"

alias git:pull="git_pull"
