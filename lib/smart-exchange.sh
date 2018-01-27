#!/usr/bin/env bash

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
  print_command "java -jar ${SE_ROOT_DIR}SmartExchangeRESTAPI/target/smartExchangeRestApi.war"
  java -jar ${SE_ROOT_DIR}SmartExchangeRESTAPI/target/smartExchangeRestApi.war
}

alias se:file="start_ms_file_gen"

alias se:zip="start_ms_map_zip_gen"

alias se:sim="start_ms_sim_calc"

alias se:api="start_api"

