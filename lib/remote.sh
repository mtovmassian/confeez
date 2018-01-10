#!/usr/bin/env bash

ssh_aws_bastion() {
  print_command "ssh -i ${AWS_HARDIS_KEYS_DIR}/HardisGroup_BA_Grenoble.pem ec2-user@ec2-34-240-188-186.eu-west-1.compute.amazonaws.com"
  ssh -i ${AWS_HARDIS_KEYS_DIR}/HardisGroup_BA_Grenoble.pem ec2-user@ec2-34-240-188-186.eu-west-1.compute.amazonaws.com
}

ssh_neptune_labels240() {
  print_command "ssh hardis@description.neptune.fr"
  ssh hardis@description.neptune.fr
}

AWS_HARDIS_KEYS_DIR="${HOME}/.ssh/aws/hardis"

alias ssh:hardis:smartdata="ssh usercds@192.168.32.187"

alias ssh:hardis:smartex="ssh usersmartexchange@192.168.38.154"

alias ssh:neptune:labels240="ssh_neptune_labels240"

alias ssh:aws:bastion="ssh_aws_bastion"