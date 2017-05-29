#!/usr/local/bin/bash

E_FILE_ACCESS=70
E_BADARGS=71

#0 for STIN
#1 for STDOUT
#2 for STDERR

if [[ ! -r "$1" ]] # if the file is not readable
then
  echo "Can't read from input file!"
  echo "Usage: $0 input-file output-file"
  echo $E_FILE_ACCESS
fi

if [[ -z "$2" ]] # check if the second is passed to the script
then
  echo "Specify the output file!"
  echo "Usage: $0 input-file output-file"
  exit $E_BADARGS
fi

exec 4<&0   # link file descriptor 4 to the standard input
exec < $1   # read from input file

exec 7>&1   # link file descripor 7 with STDOUT
exec > $2   # and write to the output file

tr a-z a-z  #transform all lower case to upper case

exec 1>&7 7>&- # restor the STOUD and close the file descripor 7
exec 0<&4 4<&- # restor the STOUD and close the file descripor 7
