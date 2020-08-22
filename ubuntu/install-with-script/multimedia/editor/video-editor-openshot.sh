#
# openshot
#


echo "."
echo "."
echo "---[openshot Video Editor - installation script]---"
echo "."


echo "."
echo "Download openshot repository"
echo "."
echo "."
sudo add-apt-repository ppa:openshot.developers/ppa -y
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


sudo apt install openshot-qt -y


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
echo "---[remove openshot Video Editor installation]---"
echo "."
echo "sudo apt-get remove openshot-qt; sudo apt-get autoremove "
echo "."
echo "."

echo "."
echo "loading openshot-qt software"
echo "openshot-qt "
echo "."
echo "."
echo "."

