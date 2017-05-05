#!/usr/local/bin/bash

#exit command ( $?)
# it hold the state of the las command

echo "traalalla"
#represents the state of the LAST command
echo $? # this will print 0

#if we add a random typing in the middle
hfiuheahsiehfes
echo $? #outputs 127, an error code because "hfiuheahsiehfes" is not a command

echo " "
echo "------------------------------------------" #just to separate the parts of the lecture
echo " "

NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS"] #if the numbber of command line arguments ( $#) is not equal ( -ne ) to  $NO_OF_ARGS, then
then
    echo "Usage: `basename $0` testFile1 testFile2" # $0 is the first argument on command line, which is the name of the script

exit $E_BADARGS
fi

if [[ ! -r "$1" || ! -r "$2" ]] #- -r will return true if the file exits and is readable, ! is a logica not.
                                # so, if one of these files do not exist or is not readable, the following code will run.
then
  echo "Files is not readable or not readable"
  exit "$E_UNREADABLE"
fi

# cmp command compares both files byte by byte.
cmp $1 $2 &> /dev/null # dev/null is a folder that doest not exist, is like a limbo. If you send something there, you send to nothing

if [ $? -eq 0 ] #remmember that $? will result the state of the previous command. The cmp one
then
  echo "File are the same"
else
  echo "File are not the same"
fi

exit 0
