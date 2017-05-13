#!/usr/local/bin/bash

E_NOPATTERN=71
DIR=/usr/share/dict/words #there is plenty of words right here

if [ -z "$1" ] #evaluate if any argument is passed
then
  echo
  echo "Usage: "
  echo "`basename $0` \"pattern,\""
  echo "where \"pattern,\" is in the form"
  echo "ooo..o.ooo....o"
  echo "The o's are letter you already know,"
  echo "and the periods are missing letters"
  echo "Letters and periods can be in any position"
  echo "For example: w...i...n"
  echo
  exit $E_NOPATTERN
fi


# The ^ is an achor that matches the begginig of a line. $ is also an anchor that matches the end of a line
# grep searches for a patter in the variable $DICT
grep ^"$1"$ "$DIR"


#Test the following inputs:

# ./grepDemo.sh g.p
# It will show all words that has 3 characters that starts with g and finishes with p

# ./grepDemo.sh b..
# It will show all words starting with b followed by 3 characters
