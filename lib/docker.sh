#!/usr/bin/env bash

alias dk="docker"

alias dkc="docker container"
alias dkcl="docker container ls --all"
alias dkclq="docker container ls --all --quiet"
alias dkcs="docker container stop"
alias dkcr="docker container rm"

dkc_stop_remove() {
  dk stop $(dkc ls -f 'status=running' -q) && dk rm $(dkc ls -qa)
}

alias dki="docker image"
alias dkil="docker image ls --all"
alias dkilq="docker image ls --all -q"

alias dksp="docker system prune --all --volumes"

alias kb="kubectl"
