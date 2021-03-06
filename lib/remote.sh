#!/usr/bin/env bash

AWS_HARDIS_KEY="${HOME}/.safe/aws/hardis/HardisGroup_BA_Grenoble.pem"

AWS_MARTIN_KEY="${HOME}/.safe/aws/martin/aws-martin-key.pem"

copy_ssh_key() {
 user_at_host="$1"
 # ssh-copy-id ~/.ssh/id_rsa.pub "${user_at_host}"
 cat ~/.ssh/id_rsa.pub | ssh "${user_at_host}" 'cat >> ~/.ssh/authorized_keys'
}

alias ssh:copykey="copy_ssh_key"

alias ssh:sd="ssh usercds@192.168.32.187"

alias ssh:se1="ssh usersmartexchange@192.168.38.154"

alias ssh:se2="ssh usersmartexchange@192.168.238.198"

alias ssh:se3="ssh userds@192.168.141.101"

alias ssh:labels240="ssh hardis@description.neptune.fr"

alias ssh:interndata="ssh userds@10.208.38.188"

alias ssh:asterix="ssh ubuntu@134.158.151.46"

alias ssh:emr="ssh hadoop@35.180.85.255"

alias ssh:lims="ssh lims@vmlimsdev"
