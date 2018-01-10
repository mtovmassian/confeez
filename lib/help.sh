#!/usr/bin/env bash

help_linux_rights() {
  echo ""
  echo "r(read):    4 100"
  echo "w(write):   2 010"
  echo "x(execute): 1 001"
  echo ""
}

help_date() {
  echo ""
  echo "date \"+%Y-%m-%d %H:%M:%S\""
  echo ""
}

help_tar() {
  echo ""
  echo "c: create archive"
  echo "x: extract archive"
  echo "f: use file passed as parameter"
  echo "v: verbose mode"
  echo "z: compress with Gzip"
  echo ""
  echo "CREATE COMPRESSED ARCHIVE"
  echo "tar zcvf [filename].tar.gz [directory]"
  echo ""
  echo "EXTRACT COMPRESSED ARCHIVE"
  echo "tar zxvf [tar.gz file]"
  echo ""
}

help_mysql() {
  echo ""
  echo "CREATE DATABASE:"
  echo "mysql> create database [database] character set utf8 collate utf8_general_ci;"
  echo ""  
  echo "DUMP DATABASE:"
  echo "~\$ mysqldump -u [username] -p [database] > [filename]_\$(date +%Y%m%d).sql"
  echo ""
  echo "RESTORE DATABASE:"
  echo "~\$ mysql -u [username] -p [database] < [sql file]"
  echo ""
  echo "LOAD DATA:"
  echo "mysql> load data local infile '[csv file]' into table [table] character set utf8 fields terminated by ',' enclosed by '\\\"' lines terminated by '\\n' ignore 1 lines;"
  echo ""
}

help_scp() {
  echo ""
  echo "FROM LOCAL TO REMOTE"
  echo "scp [local file] [remote user]@[remote domain]:[remote directory]"
  echo ""
  echo "FROM REMOTE TO LOCAL"
  echo "scp [remote user]@[remote domain]:[remote file] [local directory]"
  echo ""
}

help_vim() {
  echo ""
  echo "EXECUTE COMMAND AROUND TAG"
  echo "[command]at"
  echo ""
  echo "EXECUTE COMMAND UNTIL CHARACTER (INCLUDE/NOT INCLUDE)"
  echo "[command]f[character] / [command]t[character]"
  echo ""
  echo "EXECUTE COMMAND ON WORD UNDER CURSOR"
  echo "[command]iw"
  echo ""
  echo "EXECUTE COMMAND INSIDE ENCLOSING TAG"
  echo "[command]i[enclosing tag]"
  echo ""
  echo "EXECUTE COMMAND FROM CURSOR UNTIL END OF LINE WITHOUT NEW LINE CHARACTER"
  echo "[command]g_"
  echo "SEARCH AND REPLACE GLOBALLY"
  echo ":%s/foo/bar/g"
  echo ""
}

help_iptables() {
  echo ""
  echo "ACCEPT ONLY ACCESS FROM LOCALHOST"
  echo "sudo iptables -A INPUT -s 127.0.0.1 -p tcp --dport [port] -j ACCEPT"
  echo "sudo iptables -A INPUT -p tcp --dport [port] -j DROP"
  echo ""
  echo "LIST ACCESS RULES"
  echo "sudo iptables -L -v -n"
  echo ""
  echo "RESET ALL ACCESS RULES"
  echo "sudo iptables -F && sudo iptables -X"
  echo ""
}

alias help:rights="help_linux_rights"

alias help:date="help_date"

alias help:mysql="help_mysql"

alias help:scp="help_scp"

alias help:vim="help_vim"

alias help:iptables="help_iptables"