#!/usr/bin/env bash

# LABELS 240 -----------------------------------------------------------------------------------------------------------------------------
labels240_home_dir="~/dev/labels-240"

alias l240="cd ${labels240_home_dir}"

alias l240:web="cd ${labels240_home_dir}/labels240-client"

alias l240:srv="cd ${labels240_home_dir}/labels240"

# BCTP -----------------------------------------------------------------------------------------------------------------------------------
bctp_home_dir="~/dev/bctp"

alias bctp="cd ${bctp_home_dir}"

alias bctp:guard="cd ${bctp_home_dir}/bctp-guard"

alias bctp:network="cd ${bctp_home_dir}/bctp-network"

alias bctp:web="cd ${bctp_home_dir}/bctp-web"

alias bctp:vm="ssh userbctp@159.8.79.22"

# SIE ------------------------------------------------------------------------------------------------------------------------------------
sie_home_dir="~/dev/sie"

alias sie="cd ${sie_home_dir}"

alias sie:srv="cd ${sie_home_dir}/sie-server"

alias sie:web="cd ${sie_home_dir}/sie-web"

alias sie:db="mysql -h localhost -u root -p sie_dev"

alias sie:hardis="ssh usersie@vmsiedev"

# ODIACC ---------------------------------------------------------------------------------------------------------------------------------
odiacc_home_dir="~/dev/odiacc"

b64_encode_basic_auth() {
  username="${1}"
  token="${2}"
  echo -n "${username}:${token}" | base64
}

alias odiacc="cd ${odiacc_home_dir}"

alias odiacc:web="cd ${odiacc_home_dir}/odiaccweb && npm run start"

alias odiacc:srv="cd ${odiacc_home_dir}/odiaccsrv && pipenv run python server.py"

alias b64auth="b64_encode_basic_auth"

# SMARTEXCHANGE --------------------------------------------------------------------------------------------------------------------------
SE_ROOT_DIR="/home/martin/dev/smart-exchange/"

start_ms_file_gen() {
  print_command "java -jar ${SE_ROOT_DIR}SmartExchangeMICROSERV/smart-exchange-ms-mapping-file-generator/target/SmartExchangeMsMappingFileGenerator.jar"
  java -jar ${SE_ROOT_DIR}SmartExchangeMICROSERV/smart-exchange-ms-mapping-file-generator/target/SmartExchangeMsMappingFileGenerator.jar
}

start_ms_map_zip_gen() {
  print_command "java -jar ${SE_ROOT_DIR}SmartExchangeMICROSERV/smart-exchange-ms-mapping-zip-generator/target/SmartExchangeMsMappingZipGenerator.jar"
  java -jar ${SE_ROOT_DIR}SmartExchangeMICROSERV/smart-exchange-ms-mapping-zip-generator/target/SmartExchangeMsMappingZipGenerator.jar
}

start_ms_sim_calc() {
  print_command "java -jar ${SE_ROOT_DIR}SmartExchangeMICROSERV/smart-exchange-ms-similarity-calculator/target/SmartExchangeMsSimilarityCalculator.jar"
  java -jar ${SE_ROOT_DIR}SmartExchangeMICROSERV/smart-exchange-ms-similarity-calculator/target/SmartExchangeMsSimilarityCalculator.jar
}

start_api() {
  print_command "java -jar ${SE_ROOT_DIR}SmartExchangeRESTAPI/target/SmartExchangeRestApi.war"
  java -jar ${SE_ROOT_DIR}SmartExchangeRESTAPI/target/SmartExchangeRestApi.war
}

alias se:file="start_ms_file_gen"

alias se:zip="start_ms_map_zip_gen"

alias se:sim="start_ms_sim_calc"

alias se:api="start_api"
