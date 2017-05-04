#!/usr/local/bin/bash

num=1100
let "num -= 10"
echo "$num"

# Replacements or substituios
var=${num/10/B} #this is replacing 11 with the letter B
echo "$var" #the output should be B90, since the value of num was 1090.



var=HEY  #BASH treats a string as a value zero
let "var+=1" # Look, here we are summin the string value with 1, we will have 1
echo "$var"


#now  we are going to substitute hey for 20, the opposite of the begginning
var=hey222
echo "$var"
num=${var/hey/20}
echo "$num"


var1=
echo "var1=$var1"
let "var1 += 10"
echo $var1
