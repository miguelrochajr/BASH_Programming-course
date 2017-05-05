#!/usr/local/bin/bash

num=1

if [ "$num" -gt 0 ]
then
  if [ "$num" -lt 5 ]
  then
    if [ "$num" -gt 3 ]
    then
      echo "GT 0, LT 5, GT 3"
    fi
  fi
elif [ "$num" -eq 0 ]
then
  echo "EQ 0"
else
  echo "I HAVE NO IDEA"
fi

#file test operators

var="./testing.txt"
# IMPORTANT: If you want to use the full path, note that if you have spaces, you MUST either put a backslash before the space or wrap the path on double quotes.

if [[ -e $var ]] #the -e will check if the file that var points to exists
then
  echo "The file \"$var\" exists!"
else
  echo "There is no such file."
fi


#More functions
# TESTING THE CONDICIONAL STATEMENTS
echo ""
echo "________________________________________   SECOND PART - TESTING IF STATEMENTS  ___________________________________________"
echo ""

# -f #returns true if is a regula file, not a directoruyy
# -s #returns true if file not empty
# -r # if users doing the test has the permissoin to read the file, it will return true
# -x # if the users running the file has the permission to execute the file
# -w # if the users running the file has the permission to write to the file
# ! # is the negation operatoin, the logical not

NO_OF_ARGS=2

E_NOARGS=65
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_SIZE=89

if [[ -z "$1" && -z "$2" ]] # -z stands checks if the first argument is given
then
   echo "No arguments given"
   exit $E_NOARGS
fi

if [ $# -ne "$NO_OF_ARGS" ]
then
  echo "USAGE: `basename $0` file1 file2"
exit $E_BADARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]] # -e returns true if file exists
then
  echo "File does not exist"
  exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
  echo "Files need to be regular files!"
  exit $E_NOFILE
elif [[ ! -r "$1" || ! -r "$2" ]]
then
  echo "You don't have permission to read these files. "
  echo $E_UNREADABLE
elif [[ ! -s "$1" || ! -s "$2" ]]
then
  echo "The files are empty. Please populate them."
  echo $E_SIZE
fi

cat $1 $2 | sort >> file.txt

if [ $? -eq 0 ]
then
  echo "Execution of script was succesfull!"
  cat file.txt
else
  echo "We could not write onto the file.txt!"
fi
