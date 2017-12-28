#!/usr/bin/env bash

extend_array() {
  local args=($@)
  local array_var="${1}"[@]
  local array="${!array_var}" 
  local elements="${args[@]:1}"
  local index="${#array[@]}" 
  for element in $elements
  do
    array[index]="${element}"
    index=$(( index + 1 ))
  done
  echo "${array[@]}"
}

array=("a" "b" "c")
array_extended=($(extend_array array "x" "y" "z"))

echo ${array_extended[@]}
