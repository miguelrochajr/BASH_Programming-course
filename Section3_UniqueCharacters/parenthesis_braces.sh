#!/usr/local/bin/bash




echo \${test1, test2, test3}\$

#cat {testFile00, testFile01, testFile02} > test00

echo {0..9} #outputs 0 though, and inclusind, 9

var1=1
var2=2

{
  var1=10
  var2=12
}

echo "$var1 $var2"
