
#Linux 32 Bit Libraries
#Some of the tools that are part of the Android SDK are only available as 32-bit binaries for Linux. 
#If you are using a 64-bit system, these binaries will not run out-of-the-box, 
#and you get a very misleading error message:

# $ ./tools/mksdcard

#bash: ./tools/mksdcard: No such file or directory

# $ file ./tools/mksdcard

#./tools/mksdcard: ELF 32-bit LSB  executable, Intel 80386, version 1 (SYSV), 
#dynamically linked (uses shared libs), 
#for GNU/Linux 2.6.24, BuildID[sha1]=119b9b83c17fa0228acfd582e951ea8b050e1229, not stripped

# As you can see, even though the file is there, attempting to run it will give a message claiming it is not.

#To fix this, you need to install 32-bit compatibility libraries on your system.

#How that's done depends on which particular version of Linux you're using. 
#If you happen to be using a recent version of Ubuntu, try something like this:
$ sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1

## (On older versions of Ubuntu the command to run was sudo apt-get install ia32-libs).


### start

./tools/mksdcard

file ./tools/mksdcard

sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1

### end