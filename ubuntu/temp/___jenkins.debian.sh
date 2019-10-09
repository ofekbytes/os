

#### jenkin ####

sudo apt-get update -y

sudo apt-get upgrade -y

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# enter file "/etc/apt/sources.list"
echo " enter this file with vim >> "
echo " $ sudo vim /etc/apt/sources.list "
echo " copy and paste the line below to the end of the file --> /etc/apt/sources.list "
echo " deb https://pkg.jenkins.io/debian binary/ "

## at the last line insert a new line with
## copy the line below this line
## deb https://pkg.jenkins.io/debian binary/

## download jenik verison for debian/ubuntu
## https://jenkins.io/download/
## https://pkg.jenkins.io/debian/
## https://pkg.jenkins.io/debian-stable/

echo "manual link:::: https://jenkins.io/doc/ "
