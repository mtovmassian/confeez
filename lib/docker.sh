#!/usr/bin/env bash

docker_containers_stop_remove() {
    docker stop $(docker container ls -f 'status=running' -q) | xargs docker container rm 
}

env_vars_to_docker_args() {
    sed -e "s/\(.*\)=.*/-e \1=\"\${\1}\" \\\/g" $1
}

alias dk="docker"
alias dkc="docker container"
alias dkcls="docker container ls --all"
alias dkclsq="docker container ls --all --quiet"
alias dkcstop="docker container stop"
alias dkcrm="docker container rm"
alias dki="docker image"
alias dkils="docker image ls --all"
alias dkilsq="docker image ls --all -q"
alias dksp="docker system prune --all --volumes"

alias kb="kubectl"

alias dkcompon="docker-compose -f docker-compose.yml up -d"
alias dkcompoff="docker-compose stop && yes | docker-compose rm"

alias dkenvargs="env_vars_to_docker_args"
alias dkxargs="xargs docker"
