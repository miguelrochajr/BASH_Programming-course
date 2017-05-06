#!/usr/local/bin/bash

echo "$$" # the PID (Process ID) for the script Process


for n in {0..5}
do
  echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done
#the output of the above for loop is
# BASH_VERSINFO[0] = 4 # this is the bash major version
# BASH_VERSINFO[1] = 4 # the minor version
# BASH_VERSINFO[2] = 12 # patch level
# BASH_VERSINFO[3] = 1 #build version
# BASH_VERSINFO[4] = release #release status
# BASH_VERSINFO[5] = x86_64-apple-darwin16.3.0 #architecture which it is meant

# $PATH # hold the paths binaries that the shell uses to search for the commands
# $CDPATH #list the cd paths that are availabe on the CD command
# $EDITOR # The default editor that the scritp envolke
# $UID #is the User Real ID Number as recorded on cpassword. This is read onlyt variable and cannot be changed
# $EUD # Effective user ID
echo ""
echo " _________ EXAMPLE _________"
echo ""

ROOT_UID=0
echo -n "YOU ARE: " #the -n makes the next echo's print on the same line as this echo.

if [ "$UID" -eq "$ROOT_UID" ]
then
  echo "root. YOUR \$UID = $UID"
else
  echo "user. YOUR \$UID = $UID"
fi

someFuncion(){
  echo "Function name is $FUNCNAME" #$FUNCNAME will return the function's name.
}

someFuncion
echo "Outside, \$FUNCNAME = $FUNCNAME" #here is null because is outside the function


#### _________ PART 2 _________
#$GROUPS #the code of the GROUPS
# echo ${GROUPS[0]} # if this user belong to mutiple groups, the  $GROUPS would have the [0], [1] and as many groups this user is part of it
# echo $HOME #outputs the home directory of the current user
# echo $HOSTNAME #the hostname of the machine

if [[ $HOSTNAME && $USER && $HOME ]]
then
  echo "HOSTNAME: $HOSTNAME"
  echo "USER: $USER"
  echo "HOME: $HOME"
  echo "Variables are set"
else
  echo "Variables are not set"
fi

# $HOSTTYPE #print information about system hardware
# $MACHTYPE #should print the same as above


echo ""
echo " _________ IFS: Internal Field Separator _________"
echo ""
############# ---- IFS: Internal Field Separator
## Shell uses IFS where the word bounder is. Usually is space.

colors1="red-brown-black"
colors="red+brown+orange"

echo "IFS=-"
IFS=- #setting the Field Separator as the character '-'
echo $colors1 # outputs: red brown black
echo $colors # outputs: red+brown+orange

# echo $LINENO # returns the line number of this command
# $OLDPWD #Shows your last directory
# $OSTYPE #Shows your system type
# ${PIPESTATUS[*]} #This prints the status of the last pipe. Ex: cat file.txt | sort. If goes fine, it will print 0 0, meaning that both cat file.txt and sort were executed.

#### VARIABLE $REPLY
echo ""
echo " _________ INPUT (read) _________"
echo ""

# echo "Some Question"
# read
# echo "The answer to the question is: $REPLY" # $REPLY will print the input from keyboard read by 'read'


# echo "Some other question"
# read var
#
# echo "Your answer is: $var"


echo ""
echo " _________ \$SECONDS _________"
echo ""

#The variable $SECONDS returns the number os seconds the script has been running

LIMIT_TIME=12
TIME_INTERVAL=3

# while [ "$SECONDS" -le "$LIMIT_TIME" ]
# do
#   echo "This script has been running for $SECONDS seconds"
#   sleep $TIME_INTERVAL #sleep commands sleeps the program for the amount of time in seconds
# done


echo ""
echo " _________ Variables properties _________"
echo ""

declare -r var_r=5 #this -r makes the variable 'var' a readonly variable
echo "\$var_r= $var_r"

#the integer type allos it to some arithmetic operations without the commnand 'let'
declare -i var_i=10
echo "\$var_i = $var_i"
var_i=blue
echo "\$var_i = $var_i" #remmember that bash treats a string as a value of zero
