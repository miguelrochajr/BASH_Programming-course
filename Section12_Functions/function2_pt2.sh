#!/usr/local/bin/bash


# OK. Keep in mind thatt the maximum return value of a function is 255. So,
# the way to solve that is to assign the return vaue to a global variable.

ARGS=1
E_BADARGS=85

FILE=/etc/passwd

pattern=$1

if [[ $# -ne "ARGS" ]]; then # -ne is "not equal"
  echo "Usage: `basename $0` USERNAME"
  exit $E_BADARGS
fi

get_real_name()
{
  while read line
  do
    echo "$line" | grep $1 | awk -F":" '{ print $5 }' #-F is the Field delimiter, which here is the colon ":". So, print the fifth field
  done
} <$FILE

get_real_name $pattern
