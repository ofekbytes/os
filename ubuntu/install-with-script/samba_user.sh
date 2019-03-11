#
# samba - script #
#


##--[Begin]--##


# #1 --[update os]-- #
sudo apt-get update -y
sudo apt-get upgrade -y

# #2 --[install samba]-- #
sudo apt-get install samba -y

# #2 --[samba - check if samba install exists]
echo ".."
echo "Attention: where is samba:..... "
echo ".."
whereis samba

# #3 --[ubuntu user into samba]-- #
## set up ubuntu user to samaba user accout (set password)
# echo "smb password change --> jaron"
# sudo smbpasswd -a jaron

# echo "smb password change --> yaron"
# sudo smbpasswd -a yaron

# echo "smb password change --> ofir"
# sudo smbpasswd -a ofir

# echo "smb password change --> noam"
# sudo smbpasswd -a noam

# echo "smb password change --> suzie"
# sudo smbpasswd -a suzie

# #4 --[samba share point ]-- #
## create share point director/folder
## <sharePoint.sh>

# #5 --[set shared point (folder)]-- #
## set share point (folder) into "/etc/samba/smb.conf" config file.
#sudo vim /etc/samba/smb.conf

# #6 --[set shared point (folder)]-- #
echo "##"
echo "##"
echo "## copy and past this source into /etc/samba/smb.conf end of file "
echo "##"
echo "##source - begin##"
echo "##"
echo "[srv]"
echo "comment = share point"
echo "path = /srv"
echo "guest ok = no"
echo "browseable = yes"
echo "read only = no"
echo "create mask = 0600"
echo "directory mask = 0700"
echo "valid users=jaron yaron noam ofir suzie kessler"
echo "public = no"
echo "writeable = yes"

#echo "## printers share - if printer exists##
#echo "[printers]
#echo "comment = All Printers
#echo "path = /var/spool/samba
#echo "create mask = 0700
#echo "printable = Yes
#echo "browseable = No

echo "##"
echo "##source - end ##"


# #7 --[restart service in two/3 ways]-- #
## restart service in two/3 ways
#1#
echo "##"
echo "##"
echo "## restart samba service ## "
echo "##"
echo "sudo service smbd restart"
echo "##"
sudo service smbd restart

#2# 
###sudo service smb restart

#3#
###sudo /etc/init.d/smb reload


##--[End]--##
