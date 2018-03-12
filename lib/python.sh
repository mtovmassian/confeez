#!/usr/bin/env bash

VIRTUALENV_DIR="$HOME/.virtualenvs/$(basename $HOME)*/bin/python"

export_python_path() {
  project_dir="$1"
  print_command "export PYTHONPATH=$PYTHONPATH:${project_dir}"
  export PYTHONPATH=$PYTHONPATH:${project_dir}
}

alias py="eval ${VIRTUALENV_DIR}"

alias py:path="export_python_path"
