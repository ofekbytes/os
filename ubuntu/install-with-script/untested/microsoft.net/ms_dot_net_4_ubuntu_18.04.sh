#  
### microsoft.net ubuntu 18.04 ###
#  


echo "."
echo "."
echo "---[microsoft.net - installation script]---"
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
echo "---[upgrade "." system files]---"
echo "."
echo "."
sudo apt-get upgrade -y
echo "."
echo "."


#
## Download and unpack package 
## microsoft.net
## ubuntu 18.04
echo "."
echo "---[Download microsoft.net and unpack the package]---"
echo "---[ubuntu 18.04]---"
echo "net-tools"
echo "."
echo "."
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb


echo "."
echo "."
echo "---[updating system files]---"
echo "."
echo "."
sudo apt-get update -y
echo "."
echo "."
echo "---[upgrade "." system files]---"
echo "."
echo "."
sudo apt-get upgrade -y
echo "."
echo "."


echo "."
echo "."
echo "---[microsfot .net installing]---"
echo "."
echo "."
echo "Install the SDK"
echo "."
echo "."
sudo apt-get install -y apt-transport-https
sudo apt-get install -y dotnet-sdk-3.1


echo "."
echo "."
echo "---[updating system files]---"
echo "."
echo "."
sudo apt-get update -y
echo "."
echo "."
echo "---[upgrade "." system files]---"
echo "."
echo "."
sudo apt-get upgrade -y
echo "."
echo "."


echo "."
echo "."
echo "Install the runtime"
echo "."
sudo apt-get install -y apt-transport-https
sudo apt-get install -y aspnetcore-runtime-3.1


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


echo "."
echo "."
echo "."
echo "."

#
## TODO
#
# 1. in the script file path sound be installation file called
# ./packages-microsoft-prod.deb
#
# 2. contine that script to auto install this file without using the "ubuntu software"



