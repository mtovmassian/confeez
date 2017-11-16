#!/usr/bin/env bash

docker_ps_filter_ancestor() {
  ancestor="$1"
  docker ps -a -q --filter "ancestor=${ancestor}"
}

docker_rm_images() {
  images="$@"
  for image in $images
  do
    docker image rm --force "${image}"
  done
}

alias dk="docker"

alias dk:cnt="docker container"

alias dk:img="docker image"

alias dk:img:ls="docker image ls"

alias dk:img:rm="docker_rm_images"

alias dk:ser="docker service"

alias dk:sta="docker stack"

alias dk:ps="docker ps --all"

alias dk:ps:img="docker_ps_filter_ancestor"

alias dkmch="docker-machine"

