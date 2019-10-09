# 
# Angular install
# 


echo "."
echo "step 1: node.js (npm) script"
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
echo "Download node.Js version 11.x , npm version 6.6.0 "
echo "."
echo "."
# node.Js version 11.x , npm version 6.6.0 
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -


echo "."
echo "."
echo "node.Js version 11.x , npm version 6.6.0 "
echo "."
echo "."
sudo apt-get install -y nodejs


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


# node.js version v10.x:
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#sudo apt-get install -y nodejs


# node.js version v8.x:
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs


# node.js version v6.x:
#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#sudo apt-get install -y nodejs


# Optional: install build tools
sudo apt-get install -y build-essential


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
echo "node --version"
node --version

echo "."
echo "npm --version"
npm --version

# install/remove node.js #
# https://github.com/nodesource/distributions/blob/master/README.md#deb


echo "."
echo "step 2: angular script"
echo "."
echo "."

sudo chmod -v 777 /usr/bin/node_modules/
sudo chmod -v 777 /usr/bin

npm install -g @angular/cli


