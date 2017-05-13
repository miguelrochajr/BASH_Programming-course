#!/usr/local/bin/bash


E_BADARGS=65 #error message

if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` file "
  exit $E_BADARGS
else
  for i #this wil iterate over the file we passed
  do
    # the idea of this regex is to strip out the header of the file
    # -e it treats the following code as a set of instructions
    # '1,/^$/d' it deletes from the beggining of the input up to the first blank line.
    # '/^$/d'  it deletes all the blank lines
    sed -e '1,/^$/d' -e '/^$/d' $i
  done
fi

#this will print out the file without the header. In our case, it will
# print out all lines of myfile.txt withou the first.

# IMPORTANT NOTE: BASH itself does NOT recognize regular expressions. Commands
# like 'sed', 'awk' and other commands are those that will interpret the regex
# bash does the globing. It recognize the wilcards.
