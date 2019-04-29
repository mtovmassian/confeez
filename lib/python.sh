#!/usr/bin/env bash

VIRTUALENV_DIR="$HOME/.virtualenvs/$(basename $HOME)*/bin/python"

export_python_path() {
  project_dir="$1"
  print_command "export PYTHONPATH=$PYTHONPATH:${project_dir}"
  export PYTHONPATH=$PYTHONPATH:${project_dir}
}

run_python() {
  echo "${VIRTUALENV_DIR} $@"
}

alias py="eval ${VIRTUALENV_DIR}"

alias py:path="export_python_path"

alias prp="pipenv run python"
