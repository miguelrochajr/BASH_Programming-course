#!/usr/local/bin/bash

var="T r a la l a l a   lalalal   l"

#with the following, not all the whitespaces will be preserved
echo $var

# however,  with the quotes, it wil be preserved
echo "$var"

#both declaratoins below will result in the same thing
var="test1 test2 test3"
echo "$var"

var=test1\ test2\ test3
echo "$var"


#you can set multiple variables on the same line, separating with spaces
var1=11 var2=22 var3=33
echo "$var1 $var2 $var3"


# Adding values
unset var
let "var += 10" # this is the same as var = var + 10
echo "$var"

# Reverse quotes takes the value from the quotes and give to the commad on the left
folders=`ls ~/`
echo "$folders"

      # there are also examples where you could you the parenthesis too
folders=$(ls -la) #ls -la gets the long list of all files/folders. The $ is important
                  # because we take an operantion and convert to a reference value and place it as the value of 'folders' variable
