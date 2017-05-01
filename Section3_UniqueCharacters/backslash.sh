#Backslash backquote and null command

########   the backslash character \, also called the escaped

echo "macOS is great!"
echo "\"macOS is great!\"" #escape character makes the next to it valeu to be displayed


#######  #Slash
#let performs mathematical operations
let val=500/2
echo $val

#backquote
#takes the value of echo and assigns to val12
val2= `echo $val2`
echo $val2

#######  null operator ':'
var=20
if [ "$var" -gt 15 ]
then :
else
  echo $var
fi
#if you want to clean a file named wood.txt, type the follwing command
# $ : > wood.txt
# the null operator will replace the entire file wood.txt with nothing. Note that '>' redirects the output to the file. To concatenate, use '>>'
