## TODO ## 
## order the ux and ui of this script )


#  
### mariadb server install ###
#  


echo "."
echo "."
echo "---[mariadb server - installation script]---"
echo "."
echo "."


echo "."
echo "."
echo "---[updating system files]---"
echo "."
echo "."
sudo apt-get update -y
echo "."
echo "."
echo "---[upgrade system files]---"
echo "."
echo "."
sudo apt-get upgrade -y
echo "."
echo "."

$ sudo apt update

$ sudo apt upgrade

$ sudo apt install mariadb-server-10.3 


$ sudo mariadb <enter>


##1 create a new mariadb root user (inside mariadb)
MariaDB [(none)]> GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;

## 2 change password (exist user)
MariaDB [(none)]> GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY '2Wsxcde3' WITH GRANT OPTION;

## 3 change password another way.
ALTER USER 'admin'@'localhost' IDENTIFIED BY 'new_password';

## 4 change password another way. (force password)
UPDATE mysql.user SET authentication_string = PASSWORD('new_password') WHERE User = 'admin' AND Host = 'localhost';



Query OK, 0 rows affected (0.003 sec)

MariaDB [(none)]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.001 sec)

MariaDB [(none)]> exit


### Testing MariaDB
$ sudo systemctl status mariadb

 mariadb.service - MariaDB 10.3.29 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: active (running) since Wed 2021-06-02 12:23:21 IDT; 23min ago
       Docs: man:mysqld(8)
             https://mariadb.com/kb/en/library/systemd/
   Main PID: 6513 (mysqld)
     Status: "Taking your SQL requests now..."
      Tasks: 31 (limit: 4501)
     Memory: 61.5M
     CGroup: /system.slice/mariadb.service
             └─6513 /usr/sbin/mysqld

Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: Processing databases
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: information_schema
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: mysql
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: performance_schema
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: Phase 6/7: Checking and upgrading tables
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: Processing databases
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: information_schema
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: performance_schema
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: Phase 7/7: Running 'FLUSH PRIVILEGES'
Jun 02 12:23:22 jron /etc/mysql/debian-start[6551]: OK


$ sudo mysqladmin version

mysqladmin  Ver 9.1 Distrib 10.3.29-MariaDB, for debian-linux-gnu on x86_64
Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Server version		10.3.29-MariaDB-0ubuntu0.20.04.1
Protocol version	10
Connection		Localhost via UNIX socket
UNIX socket		/var/run/mysqld/mysqld.sock
Uptime:			25 min 12 sec

Threads: 6  Questions: 465  Slow queries: 0  Opens: 175  Flush tables: 1  Open tables: 31  Queries per second avg: 0.307


$ mysqladmin -u admin -p version

mysqladmin -u admin -p version
Enter password: 
mysqladmin  Ver 9.1 Distrib 10.3.29-MariaDB, for debian-linux-gnu on x86_64
Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Server version		10.3.29-MariaDB-0ubuntu0.20.04.1
Protocol version	10
Connection		Localhost via UNIX socket
UNIX socket		/var/run/mysqld/mysqld.sock
Uptime:			26 min 33 sec

Threads: 6  Questions: 466  Slow queries: 0  Opens: 175  Flush tables: 1  Open tables: 31  Queries per second avg: 0.292




