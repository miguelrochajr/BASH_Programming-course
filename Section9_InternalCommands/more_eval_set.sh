#!/usr/local/bin/bash


var="1 2 3"
echo $var
set -- $var #
i=1
while [ "$i" -le "$#" ]
do
  echo -n "\$$i = "
  eval echo \$$i
  (( i++ ))
done

set --
echo "\$1 = $1"
echo "\$2 = $2"
echo "\$2 = $3"



echo "---- how the unset would work -----"
var="1 2 3"
echo "$var"
unset var
echo "$var"
