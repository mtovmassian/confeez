#!/usr/bin/env bash

help_on_linux_rights() {
  echo ""
  echo "r(read)    4 100"
  echo "w(write)   2 010"
  echo "x(execute) 1 001"
  echo ""
}

help_on_date_function() {
  echo ""
  echo "date \"+%Y-%m-%d %H:%M:%S\""
  echo ""
}

help_on_mysql() {
  echo ""
  echo "CREATE DATABASE:"
  echo "mysql> create database [database] character set utf8 collate utf8_general_ci;"
  echo ""  
  echo "DUMP DATABASE:"
  echo "~\$ mysqldump -u [username] -p [database] > [filename]_\$(date +%Y%m%d).sql"
  echo ""
  echo "RESTORE DATABASE:"
  echo "~\$ mysql -u [username] -p [database] < [dump file]"
  echo ""
  echo "LOAD DATA:"
  echo "mysql> load data local infile '[csv filename]' into table [table] character set utf8 fields terminated by ',' enclosed by '\\\"' lines terminated by '\\n' ignore 1 lines;"
  echo ""
}

alias help:rights="help_on_linux_rights"

alias help:date="help_on_date_function"

alias help:mysql="help_on_mysql"
