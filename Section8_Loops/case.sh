#!/usr/local/bin/bash


echo -n "Enter a letter or a digit: "
read a
case "$a" in
  [[:lower:]] ) echo "$a is a lower case letter";;
  [[:upper:]] ) echo "$a is an upper case letter";;
  [0-9]       ) echo "$a is a digit";;
  *           ) echo "\"$a\" is a special character";;
esac

exit 0
