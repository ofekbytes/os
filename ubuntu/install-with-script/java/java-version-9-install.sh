#
# java 9/1.9
#


echo "."
echo "."
echo "---[java - jdk installation script]---"
echo "."
echo "."
echo "- installation vestion: ...."
echo "-- java jdk version: 9/1.9"
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
echo "install default-jre"
echo "."
## Java-jre##
sudo apt-get install default-jre -y
echo "."
echo "."
echo "install default-jdk"
echo "."
## Java-jdk##
sudo apt-get install default-jdk -y
echo "."
echo "."



echo "."
echo "."
echo "---[jdk download and update]---"
echo "."
echo "."
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:linuxuprising/java -y
sudo apt-get update -y


echo "."
echo "."
echo "---[installing --> jdk-9/1.9]---"
echo "."
echo "."
sudo apt-get install oracle-java9-installer -y


echo "."
echo "."
echo "---[Managing Java - select your default version]---"
echo "."
echo "."
sudo update-alternatives --config java


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
echo "---[installation vestion]---"
echo "."
echo "."
echo "java version: "
java -version
echo "."
echo "."
echo "---[java - jdk 9/1.9 - installation completed.]---"
echo "."
echo "."

