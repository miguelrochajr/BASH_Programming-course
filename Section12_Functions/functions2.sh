#!/usr/local/bin/bash


E_PARA_ERR=250
EQUAL=251

function_max  ()
{
  if [[ -z "$2" ]]; then
    return $E_PARA_ERR
  fi

  if [[ "$1" -eq "$2" ]]; then
    return $EQUAL
  else
    if [[ "$1" -gt "$2" ]]; then
      return $1
    else
      return $2
    fi
  fi
}

function_max 12 13
return_value=$? #remember: the $? takes the state of the last command

if [[ "return_value" -eq $E_PARA_ERR ]]; then
  echo "Function need 2 params"
elif [[ "return_value" -eq $EQUAL ]]; then
  echo "Numbers are equal"
else
  echo "Max number is $return_value"
fi
