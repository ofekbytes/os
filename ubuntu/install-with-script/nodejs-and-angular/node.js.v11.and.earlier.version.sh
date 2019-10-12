# 
# Node.js
# 


echo "."
echo "node.js (npm) script"
echo "."
echo "."

sudo apt-get update -y

sudo apt-get upgrade -y

# node.Js version 11.x , npm version 6.6.0 
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -y

sudo apt-get install -y nodejs

sudo apt-get update -y

sudo apt-get upgrade -y

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


sudo apt-get update -y

sudo apt-get upgrade -y


node --version

npm --version

# install/remove node.js #
# https://github.com/nodesource/distributions/blob/master/README.md#deb



