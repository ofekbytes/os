#  
### mySql install ###
#  


echo "."
echo "."
echo "---[mysql-server - installation script]---"
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
echo "---[upgradingecho "." system files]---"
echo "."
echo "."
sudo apt-get upgrade -y
echo "."
echo "."


echo "."
echo "---[mysql-server install]---"
echo "mysql-server"
echo "."
echo "."
#install mysql-server ###add -y to auto confirm
sudo apt-get install mysql-server -y


echo "."
echo "."
echo "If the secure installation utility does not launch automatically" 
echo "after the installation completes, enter the following command:"
echo "sudo mysql_secure_installation utility"
echo "."
echo "."

echo "."
echo "."
echo "connect to the MySQL database from another machine by "
echo "opening a port in your server firewall firewall (default port is: 3306). "
echo "."
echo "check fireWall and Allow remote access to mysql-server"
sudo ufw enable
echo "."
echo "."
echo "Add Rule to fireWall"
sudo ufw allow mysql-server
echo "."
echo "."


echo "."
echo "."
echo "start mysql-server service"
sudo systemctl start mysql
echo "."
echo "."


echo "."
echo "."
echo "Launch mysql-server at reboot"
sudo systemctl enable mysql
echo "."
echo "."


echo "."
echo "."
echo "Configure interfaces"
echo "MySQL, by default is no longer bound to ( listening on ) any remotely accessible interfaces."
echo "Edit the “bind-address” directive in"
echo "/etc/mysql/mysql.conf.d/mysqld.cnf"
echo "."
echo "backup config file"
sudo cp /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf.bk.1
echo "."
echo "edit /etc/mysql/mysql.conf.d/mysqld.cnf -and- add this configuration"
echo "."
echo "bind-address = 127.0.0.1 ( The default. )"
echo "# bind-address = XXX.XXX.XXX.XXX ( The ip address of your Public Net interface. )"
echo "# bind-address = ZZZ.ZZZ.ZZZ.ZZZ ( The ip address of your Service Net interface. )"
echo "# bind-address = 0.0.0.0 ( All ip addresses. )"
echo "."

echo "."
echo "."
echo "restart mysql-server"
sudo systemctl restart mysql
echo "."
echo "."

echo "."
echo "login mysql-server"
/usr/bin/mysql -u root -p
echo "."

# change mysql-server password.
# sudo mysql_secure_installation


## login mysql server 
# sudo mysql -u root -p 


## install mysql-client -y
# sudo apt-get install mysql-client


echo "."
echo "."
echo "---[install mysql client]---"
sudo apt-get install mysql-client* 
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
echo "---[upgrading system files]---"
echo "."
echo "."
sudo apt-get upgrade -y
echo "."
echo "."

## links ##
## installation mysql-server ##
## https://support.rackspace.com/how-to/installing-mysql-server-on-ubuntu/ ##
##
##
## Reset a MySQL root password ##
## https://support.rackspace.com/how-to/mysql-resetting-a-lost-mysql-root-password/ ##

##
##
##
## Reset a MySQL root password ##
## 
#1# stop mysql-server service #
# sudo /etc/init.d/mysql stop
##
##
#2# Start MySQL without a password#
# sudo mysqld_safe --skip-grant-tables &





