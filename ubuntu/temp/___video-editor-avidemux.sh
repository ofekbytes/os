#
# Node.js
#


echo "."
echo "."
echo "---[Avidemux Video Editor - installation script]---"
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


sudo apt-get install avidemux2.6-qt


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
echo "---[remove Avidemux Video Editor installation]---"
echo "."
echo "sudo apt-get remove --autoremove avidemux2.6-qt"
echo "."
echo "."

