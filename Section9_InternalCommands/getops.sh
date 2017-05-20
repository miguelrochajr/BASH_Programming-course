#!/usr/local/bin/bash

# getops will the while loop to phrase options that are passed to the script
# the options have to pased like -d -m, aways with the dash

while getopts :dm option
do
  case $option in
    d) d_option=1
    ;;
    m) m_option=1
    ;;
    *) echo "Usage: -dm"
  esac
done


day=`date | awk '{print $1 " " $3}'` #prints the first and second variable separeted by a space
#for this case, prints the first parameter from the date command.

if [[ ! -z $d_option ]]
then
  echo "Date is $day"
fi

month=`date | awk '{print $2}'`
if [[ ! -z  $m_option ]]
then
  echo "Month is: $month"
fi

shift $(($OPTIND - 1)) #index of the next argument to be process
