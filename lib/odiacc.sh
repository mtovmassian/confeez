#!/usr/bin/env bash

odiacc_home_dir="~/dev/odiacc"

b64_encode_basic_auth() {
  username="${1}"
  token="${2}"
  echo -n "${username}:${token}" | base64
}

alias odiacc="cd ${odiacc_home_dir}"

alias odiacc:web="cd ${odiacc_home_dir}/odiaccweb"

alias odiacc:srv="cd ${odiacc_home_dir}/odiaccsrv"

alias b64auth="b64_encode_basic_auth"
