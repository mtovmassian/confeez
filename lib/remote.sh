#!/usr/bin/env bash

copy_ssh_key() {
 user_at_host="$1"
 # ssh-copy-id -i ~/.ssh/id_rsa.pub "${user_at_host}"
 cat ~/.ssh/id_rsa.pub | ssh "${user_at_host}" 'cat >> ~/.ssh/authorized_keys'
}

alias ssh:copykey="copy_ssh_key"
