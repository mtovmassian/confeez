#!/usr/bin/env bash

odiacc_home_dir="~/dev/odiacc"

b64_encode_basic_auth() {
  username="${1}"
  token="${2}"
  echo -n "${username}:${token}" | base64
}

alias odiacc="cd ${odiacc_home_dir}"

alias odiacc:web="cd ${odiacc_home_dir}/odiacc_web"

alias odiacc:server="cd ${odiacc_home_dir}/odiacc_server"

alias b64auth="b64_encode_basic_auth"
