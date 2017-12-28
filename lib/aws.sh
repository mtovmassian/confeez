#!/usr/bin/env bash

create_lambda_function() {
  echo -n "region: "
  read region

  echo -n "function-name: "
  read function_name

  echo -n "zip-file: "
  read zip_file

  echo -n "role: "
  read role

  echo -n "handler: "
  read handler

  echo -n "runtime: "
  read runtime

  echo -n "profile: "
  read profile

  echo -n "timeout: "
  read timeout

  echo -n "memory-size: "
  read memory_size

  aws lambda create-function --region "${region}" --function-name "${function_name}" --zip-file fileb://"${zip_file}" --role "${role}" \
    --handler "${handler}" --runtime "${runtime}" --profile "${profile}" --timeout "${timeout}" --memory-size "${memory_size}"

}

alias aws:lambda:create="create_lambda_function"
