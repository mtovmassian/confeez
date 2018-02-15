#!/usr/bin/env bash

# LINUX RIGHTS ---------------------------------------------------------------------------------------------------------------------------
help_linux_rights() {
  echo ""
  echo "r(read):    4 100"
  echo "w(write):   2 010"
  echo "x(execute): 1 001"
  echo ""
}

alias h:rights="help_linux_rights"

# DATE -----------------------------------------------------------------------------------------------------------------------------------
help_date() {
  echo ""
  echo "date \"+%Y-%m-%d %H:%M:%S\""
  echo ""
}

alias h:date="help_date"

# TAR ------------------------------------------------------------------------------------------------------------------------------------
help_tar() {
  echo ""
  echo "c: create archive"
  echo "x: extract archive"
  echo "f: use file passed as parameter"
  echo "v: verbose mode"
  echo "z: compress with Gzip"
  echo ""
  echo "CREATE COMPRESSED ARCHIVE"
  echo "tar zcvf <filename>.tar.gz <directory>"
  echo ""
  echo "EXTRACT COMPRESSED ARCHIVE"
  echo "tar zxvf <tar.gz file>"
  echo ""
}

alias h:tar="help_tar"

# MYSQL ----------------------------------------------------------------------------------------------------------------------------------
help_mysql() {
  echo ""
  echo "CREATE DATABASE:"
  echo "mysql> create database <database> character set utf8 collate utf8_general_ci;"
  echo ""  
  echo "DUMP DATABASE:"
  echo "~\$ mysqldump -u <username> -p <database> > <filename>_\$(date +%Y-%m-%d).sql"
  echo ""
  echo "RESTORE DATABASE:"
  echo "~\$ mysql -u <username> -p <database> < <sql file>"
  echo ""
  echo "CREATE USER"
  echo "mysql> CREATE USER '<username>'@'localhost' IDENTIFIED BY '<password>';"
  echo ""
  echo "GRANT PERMISSIONS"
  echo "mysql> GRANT [ALL PRIVILEGES | CREATE | DROP | DELETE | INSERT | SELECT | UPDATE | GRANT OPTION] ON <database>. * TO '<username>'@'localhost';"
  echo ""
  echo "LOAD DATA:"
  echo "mysql> load data local infile '<csv file>' into table <table> character set utf8 fields terminated by ',' enclosed by '\\\"' lines terminated by '\\n' ignore 1 lines;"
  echo ""
}

alias h:mysql="help_mysql"

# MONGODB --------------------------------------------------------------------------------------------------------------------------------
help_mongodb() {
  echo ""
  echo "DUMP DATABASE:"
  echo "~\$ mongodump --username <username> --password '<password>' --authenticationDatabase admin --db <database> --out <directory name>_\$(date +%Y-%m-%d)"
  echo ""
  echo "RESTORE DATABASE"
  echo "~\$ mongorestore --username <username> --password '<password>' --authenticationDatabase admin --db <database> <dump directory>"
  echo ""
  echo "EXPORT COLLECTION"
  echo "~\$ mongoexport --username <username> --password '<password>' --authenticationDatabase admin --db <database> --collection <collection> --out <json file>"
  echo ""
}

alias h:mongodb="help_mongodb"

# SCP ------------------------------------------------------------------------------------------------------------------------------------
help_scp() {
  echo ""
  echo "FROM LOCAL TO REMOTE"
  echo "scp <local file> <remote user>@<remote domain>:<remote directory>"
  echo ""
  echo "FROM REMOTE TO LOCAL"
  echo "scp <remote user>@<remote domain>:<remote file> <local directory>"
  echo ""
}

alias h:scp="help_scp"

# VIM ------------------------------------------------------------------------------------------------------------------------------------
help_vim() {
  echo ""
  echo "EXECUTE COMMAND AROUND TAG"
  echo "<command>at"
  echo ""
  echo "EXECUTE COMMAND UNTIL CHARACTER (INCLUDE/NOT INCLUDE)"
  echo "<command>f<character> / <command>t<character>"
  echo ""
  echo "EXECUTE COMMAND ON WORD UNDER CURSOR"
  echo "<command>iw"
  echo ""
  echo "EXECUTE COMMAND INSIDE ENCLOSING TAG"
  echo "<command>i<enclosing tag>"
  echo ""
  echo "EXECUTE COMMAND FROM CURSOR UNTIL END OF LINE WITHOUT NEW LINE CHARACTER"
  echo "<command>g_"
  echo ""
  echo "SEARCH AND REPLACE GLOBALLY"
  echo ":%s/foo/bar/g"
  echo ""
  echo "TEXT AUTOCOMPLETION"
  echo "<Ctrl-p> / <Ctrl-n>"
  echo ""
  echo "PATH AUTOCOMPLETION"
  echo "<Ctrl-x><Ctrl-f>"
  echo ""
}

alias h:vim="help_vim"

# IPTABLES -------------------------------------------------------------------------------------------------------------------------------
help_iptables() {
  echo ""
  echo "ACCEPT ONLY ACCESS FROM LOCALHOST"
  echo "sudo iptables -A INPUT -s 127.0.0.1 -p tcp --dport <port> -j ACCEPT"
  echo "sudo iptables -A INPUT -p tcp --dport <port> -j DROP"
  echo ""
  echo "LIST ACCESS RULES"
  echo "sudo iptables -L -v -n"
  echo ""
  echo "RESET ALL ACCESS RULES"
  echo "sudo iptables -F && sudo iptables -X"
  echo ""
}

alias h:iptables="help_iptables"

# UFW ------------------------------------------------------------------------------------------------------------------------------------
help_ufw() {
  echo ""
  echo "DISPLAY RULES"
  echo "sudo ufw status verbose"
  echo ""
  echo "DISPLAY NUMBERED RULES"
  echo "sudo ufw status numbered"
  echo ""
  echo "ACCEPT/REFUSE ACCESS RULE FOR ANYONE"
  echo "sudo ufw [allow / deny] proto <protocole (ex: tcp)> to any port <port>"
  echo ""
  echo "ACCEPT/REFUSE ACCESS RULE FOR SPECIFIC IP"
  echo "sudo ufw [allow / deny] proto <protocole (ex: tcp)> from <ip> to any port <port>"
  echo ""
  echo "DELETE ACCESS RULE"
  echo "sudo ufw delete <number>"
  echo ""
}

alias h:ufw="help_ufw"
