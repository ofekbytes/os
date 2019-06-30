
## apache2  ##

#
## update the system ##
sudo apt-get update
sudo apt-get upgrade


#
## apache2 installation ## 
sudo apt-get install apache2 -y


#
## update the system ##
sudo apt-get update
sudo apt-get upgrade


#
# mariadb-server
# sudo apt-get install mariadb-server -y

#
# install php 7.2
# sudo apt-get install php7.2 php7.2-mysql libapache2-mod-php7.2 -y

#
# stat & enable server
sudo systemctl start apache2
sudo systemctl enable apache2

#
# stat & enable server - mysql + mariadb
#sudo systemctl start mysql
#sudo systemctl enable mariadb

#
# Install ApacheGUI
#

# create/enter a folder
sudo mkdir /usr/local/apachegui
cd /usr/local/apachegui

# download apacheGui 
sudo wget https://excellmedia.dl.sourceforge.net/project/apachegui/1.12-Linux-Solaris-Mac/ApacheGUI-1.12.0.tar.gz

sudo tar -xvzf ApacheGUI-1.12.0.tar.gz

cd /usr/local/apachegui/ApacheGUI/bin


#
# start ApacheGUI
#
sudo ./run.sh


#
# stop ApacheGUI
# sudo ./stop.sh


# open a browser with the address
http://your-server-ip:9999/ApacheGUI

# example: host-name/ip : port-number/
# http://kessrv:9999/ApacheGUI

# browser will open 
# http://kessrv:9999/ApacheGUI/jsp/GUISettings.jsp

# gui window is opened: 
# window title: how was apache installed ?
# select "package"
# press "ok"

# gui window is opened: 
# 
# apache package parameters windows
# Operating System Suggestion (Optional):	(debian/ubuntu in this case)
# Server Root:	/etc/apache2
# Primary Configuration File:	 /etc/apache2/apache2.conf
# Configuration Directory:	/etc/apache2
# Log Directory:	/var/log/apache2
# Modules Directory:	/usr/lib/apache2/modules
# Binary File:	/usr/sbin/apache2ctl
# Username:	admin
# Password:	your password admin
# Password:	your password admin
# Enable Authentication: Apache Logo
# Apache GUI: ApacheGUI
# Application Settings (?) : (yes/no) : no
# (?)
# This field controls whether the user must enter a username and password to use ApacheGUI. 
# Setting this to no is only recommended for local development.


### TODO ###
# create apache2 - config manual

 