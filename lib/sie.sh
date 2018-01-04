#!/usr/bin/env bash

sie_home_dir="~/dev/sie"

alias sie="cd ${sie_home_dir}"

alias sie:server="cd ${sie_home_dir}/sie-server"

alias sie:web="cd ${sie_home_dir}/sie-web"

alias sie:db="mysql -h localhost -u root -p sie_dev"

alias sie:hardis="ssh usersie@192.168.238.204"
