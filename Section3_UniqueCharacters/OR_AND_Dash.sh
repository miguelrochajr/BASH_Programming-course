#!/usr/local/bin/bash
var=1


#logical OR
if [ "$var" -gt 0 ] || [ "$var" -eq 10 ]
then
  echo "One or both conditions are true"
else
  echo "none were true"
fi


#logical AND
if [ "$var" -gt 0 ] && [ "$var" -eq 10 ]
then
  echo "One or both conditions are true"
else
  echo "none were true"
fi


#Dash -
#used to denote optional prefixes

#module %
#same thing as C++ and all the other languages

#Tilda ~
#represents home directory
# echo ~+ will echo out the current directory
# echo ~- will echo out the previous directory

#Caret symbol
#^ 
