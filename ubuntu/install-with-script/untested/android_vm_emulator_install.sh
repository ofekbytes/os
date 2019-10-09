
# Android VM emulator Installation;

sudo apt-get install lib32z1
 
##remove emulator old version
sudo rm -rf /usr/google/appinventor
sudo rm -rf ~/.appinventor

sudo apt-get remove appinventor-setup
  

## install emulator   
sudo dpkg --install appinventor2-setup_1.1_all.deb


## installation emulator path
## /usr/google/appinventor.


## run emulator
/usr/google/appinventor/commands-for-Appinventor/aiStarter &
