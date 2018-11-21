#samba user


##install samba
sudo apt-get install samba*

## samba user to samaba + set password
smbpasswd -a user
smbpasswd -a noam
smbpasswd -a ofir
smbpasswd -a suzie

##set shared folder
sudo vim /etc/samba/smb.conf


[srv]
   comment = share point
   path = /srv
   guest ok = no
   browseable = yes
   create mask = 0600
   directory mask = 0700
   valid users=user noam ofir suzie
   public = no
   writeable = yes


[printers]
	comment = All Printers
	path = /var/spool/samba
	create mask = 0700
	printable = Yes
	browseable = No

## restart service in two/2 ways
#1#
## service smb restart

#2#
## /etc/init.d/smb reload
