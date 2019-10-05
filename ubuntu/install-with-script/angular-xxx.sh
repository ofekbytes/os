#
# Angular-xxx
#


echo "."
echo "."
echo "---[updating system files]---"
echo "."
echo "."
sudo apt-get update
echo "."
echo "."
echo "---[upgrading system files]---"
echo "."
echo "."
sudo apt-get upgrade -
echo "."
echo "."


echo "."
echo "."
echo "---[setting root folders write permission for installation]---"
echo "/usr/bin/node_modules/"
echo "/usr/bin"
echo "."
echo "."
sudo chmod -v 777 /usr/bin/node_modules/
sudo chmod -v 777 /usr/bin


echo "---[Angular-xxx - installation script]---"
echo "."
echo "."
npm install -g @angular/cli


echo "Angular-xxx version: "
ng --version
echo "."
echo "."
echo "."
echo "."
echo "---[Angular-xxx - installation completed.]---"
echo "."
echo "."

