### apache-hadoop-big-data ###


## update the system ##
sudo apt-get update

sudo apt-get upgrade


#################################
##
## Java-jdk ##
##
### java_jdk_jre_install.sh ###
##
#################################


## download the hadoop package
wget http://apache.mirrors.tds.net/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz


## check the downloaded file using SHA-256
wget https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz.mds

## output ##
# --2019-01-11 17:15:31--  http://apache.mirrors.tds.net/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz
# Resolving apache.mirrors.tds.net (apache.mirrors.tds.net)... 216.165.129.134
# Connecting to apache.mirrors.tds.net (apache.mirrors.tds.net)|216.165.129.134|:80... connected.
# HTTP request sent, awaiting response... 200 OK
# Length: 366447449 (349M) [application/x-gzip]
# Saving to: ‘hadoop-2.9.2.tar.gz’
# 
# hadoop-2.9.2.tar.gz       100%[=====================================>] 349.47M   638KB/s    in 10m 6s  
# 
# 2019-01-11 17:25:38 (590 KB/s) - ‘hadoop-2.9.2.tar.gz’ saved [366447449/366447449]

## file list ##
ls -lih | grep hadoop

## output ##
# 48239391 -rw-rw-r-- 1 yaron yaron 350M נוב 20 04:42 hadoop-2.9.2.tar.gz
# 48239394 -rw-rw-r-- 1 yaron yaron  990 נוב 20 04:42 hadoop-2.9.2.tar.gz.mds


## check the downloaded file using SHA-256
wget https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz.mds

## output ##
# --2019-01-12 10:43:09--  https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz.mds
# Resolving dist.apache.org (dist.apache.org)... 209.188.14.144
# Connecting to dist.apache.org (dist.apache.org)|209.188.14.144|:443... connected.
# HTTP request sent, awaiting response... 200 OK
# Length: 990 [text/plain]
# Saving to: ‘hadoop-2.9.2.tar.gz.mds’
# 
# hadoop-2.9.2.tar.gz.mds   100%[=====================================>]     990  --.-KB/s    in 0.001s  
#
# 2019-01-12 10:43:10 (651 KB/s) - ‘hadoop-2.9.2.tar.gz.mds’ saved [990/990]


## verification ##
shasum -a 256 hadoop-2.9.2.tar.gz

## output ##
# 3d2023c46b1156c1b102461ad08cbc17c8cc53004eae95dab40a1f659839f28a  hadoop-2.9.2.tar.gz


cat hadoop-2.9.2.tar.gz.mds

## output ##
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
#   MD5 = 82 DB 6A 62 FE BD 8C 29  76 D7 5B 8B D5 51 33 15
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
#  SHA1 = EBB3 F0E5 536E E79E C00F  8D8A 209E F647 B10B DE26
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
# RMD160 = 903E 2EDF 5877 B09F 04B7  8E3C 7789 66CD AE88 362E
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
# SHA224 = 1E76D1BD ED80F3B0 CE8C5ED6 3897A39E A75E219D BEB09023 D55892C7
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
#~~this line~~#  
# SHA256 = 3D2023C4 6B1156C1 B102461A D08CBC17 C8CC5300 4EAE95DA B40A1F65 9839F28A
#~~~~~~~~~~~~~#
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
# SHA384 = BA008D60 DF04A896 FDEEE5B7 B9C2233C C33692D4 F423EA7B 1F088913 4C36A057
#          FE859ED3 0FA41F1A 194B239F 09A3FF28
# /build/source/target/artifacts/hadoop-2.9.2.tar.gz: 
# SHA512 = BD6060B6 29C2E7C5 D411AE3B A2330B79 CDB2F1CA A87D5EA6 9392C0F9 CB64A834
#          64EC8E23 F2CC6133 1B9F4928 4A6BFDC1 A3FBDEFF E3402650 E64938F5 672094F5


### TIP: compare ###
#
# 3d2023c46b1156c1b102461ad08cbc17c8cc53004eae95dab40a1f659839f28a  hadoop-2.9.2.tar.gz
#
# 3D2023C4 6B1156C1 B102461A D08CBC17 C8CC5300 4EAE95DA B40A1F65 9839F28A
#

# extract files from compressed file to local folder
tar -xvzf hadoop-2.9.2.tar.gz


## file list ##
ls -lih | grep hadoop

## output ##
# 48628055 drwxr-xr-x 9 yaron yaron 4.0K נוב 13 17:15 hadoop-2.9.2
# 48239391 -rw-rw-r-- 1 yaron yaron 350M נוב 20 04:42 hadoop-2.9.2.tar.gz
# 48239394 -rw-rw-r-- 1 yaron yaron  990 נוב 20 04:42 hadoop-2.9.2.tar.gz.mds


# move folder to "/usr/local/hadoop"
mv hadoop-2.9.2 /usr/local/hadoop


# display on screen path to java.
readlink -f /usr/bin/java | sed " s:bin/java::"

## output ##
# /usr/lib/jvm/java-8-oracle/jre/


# edit "hadoop-env.sh" file and add the static value and dynamic value
# vim/nano
nano /usr/local/hadoop/etc/hadoop/hadoop-env.sh


#export JAVA_HOME=${JAVA_HOME}
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/
export JAVA_HOME=$(readlink -f /usr/bin/java | sed " s:bin/java::" )


# run the hadoop.
/usr/local/hadoop/bin/hadoop




