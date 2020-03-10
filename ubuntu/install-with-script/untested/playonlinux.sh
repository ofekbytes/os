#
# playonlinux- window software on Linux
#


echo "."
echo "."
echo "---[playonlinux - window software on Linux]---"
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

echo "."
echo "."
echo "install playonlinux"
echo "."
## install playonlinux ##
sudo apt-get install playonlinux -y

##
## remove playonlinux ## 
#### sudo apt-get remove playonlinux
##

echo "."
echo "."
echo "---[installation vestion]---"
echo "."
echo "."
echo "playonlinux version: "
playonlinux --version
echo "."
echo "."
echo "---[playonlinux - installation completed.]---"
echo "."
echo "."

