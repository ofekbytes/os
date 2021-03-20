#
# Node.js
#

echo "."
echo "."
echo "---[node.js - installation script]---"
echo "."
echo "."
echo "- installation vestion: ...."
echo "-- nodejs version: v14.x"
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
echo "---[installing --> curl]---"
echo "."
echo "."
sudo apt-get install curl -y


echo "."
echo "."
echo "---[downloading --> node.js version 14.X]---"
echo "."
echo "."
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -


echo "."
echo "."
echo "---[installing --> nodejs]---"
echo "."
echo "."
sudo apt-get install -y nodejs 


echo "."
echo "."
echo "---[installing --> yarn]---"
echo "."
echo "."
sudo apt-get install -y yarn


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
echo "nodejs version: "
nodejs --version
echo "."
echo "."
echo "npm version: "
npm -version
echo "."
echo "."
echo "."
echo "."
echo "---[node.js - installation completed.]---"
echo "."
echo "."

