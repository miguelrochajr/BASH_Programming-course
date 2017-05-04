#!/usr/local/bin/bash


# --- parenthesis
#they are used to store a group of commands insise of it. It is important to know that those
# commands will be started on another subshell. And the parent subshell does not have
# access the variable inside of the parenthesis
var=5
(var=10;)
echo $var #this will output 5. Because 10 is inside of another subshell

    #side note: parenthesis are also used to array intializations. We will talk about later


#Curling brackets
#format how the information is written between the format itself
echo \${test1,test2,test3}\$ #it will output $test1$ $test2$ $test3$
echo \"{test1,test2,test3}\$ #it will output "test1$ "test2$ "test3$
echo \"{test1,test2,test3}\" #it will output "test1" "test2" "test3"


#cat {testFile00, testFile01, testFile02} > test00 #this woudld take the content of the files testFile00, testFile01, testFile02 and put in the file 00 

echo {0..9} #outputs 0 though, and inclusind, 9

var1=1
var2=2

{
  var1=10
  var2=12
}

echo "$var1 $var2"
