#!/usr/local/bin/bash


function_1  ()
{
  echo "call \"f2\" from \"f1\" "
  function_2 # You can only call a function not defined when inside another function
}

function_2  (){
  echo "this is \"f2\""
}

#calling a function

#some code here...

function_1


#note that you can't have functions with nothing inside. However, you can have a NULL character
function1 ()
{
  : # Colon is the NULL character
}


# --- ARGUMENT PASSING ----

myfunc()
{
  echo "First arg is $1, sedon arg is $2"
}

var1=10
var2=20

myfunc va1 var2
