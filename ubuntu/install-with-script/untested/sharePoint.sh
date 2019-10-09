#
# ubuntu share point - script #
#


##--[Begin]--##


# #1 --[update os]-- #
sudo apt-get update -y
sudo apt-get upgrade -y

# #2 --[create a new group]--
sudo groupadd -g 1100 kessler

# #3 --[check the group]-- 
# check if the new group exists
cat /etc/group | grep kessler

# #4 --[add user to group]--
sudo adduser jaron kessler
sudo adduser yaron kessler
sudo adduser ofir kessler
sudo adduser noam kessler
sudo adduser suzie kessler

# #5 --[check the users]-- 
# check if the new users exist in the new group
cat /etc/group | grep kessler

# #6 --[group owner permissions]-- 
# set group directory/folder for the group owners
sudo chown -Rv yaron:kessler /srv

# #7 --[group permissions]-- 
# set directory/folder permission
sudo chmod -Rv 774 /srv

# #8 --[check directory/folder permission]--
ls -lih / | grep srv


##--[End]--##
