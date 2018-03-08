#!/usr/bin/env bash

ssh_aws_bastion() {
  print_command "ssh -i ${AWS_HARDIS_KEYS_DIR}/HardisGroup_BA_Grenoble.pem ec2-user@ec2-34-249-156-119.eu-west-1.compute.amazonaws.com"
  ssh -i ${AWS_HARDIS_KEYS_DIR}/HardisGroup_BA_Grenoble.pem ec2-user@ec2-34-249-156-119.eu-west-1.compute.amazonaws.com
}

AWS_HARDIS_KEYS_DIR="${HOME}/.safe/aws/hardis"

AWS_MARTIN_KEY="/home/martin/.safe/aws/martin/aws-martin-key.pem"

alias ssh:sd="ssh usercds@192.168.32.187"

alias ssh:se1="ssh usersmartexchange@192.168.38.154"

alias ssh:se2="ssh usersmartexchange@192.168.238.198"

alias ssh:labels240="ssh_neptune_labels240"

alias ssh:awsbastion="ssh_aws_bastion"
