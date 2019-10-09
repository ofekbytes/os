 sudo apt-get remove teamviewer*
 sudo dpkg --add-architecture i386
 sudo apt-get update
 sudo apt-get install gdebi
 wget download.teamviewer.com/download/version_10x/teamviewer_linux.deb
 wget download.teamviewer.com/download/version_11x/teamviewer_linux.deb
 sudo gdebi teamviewer_linux.deb