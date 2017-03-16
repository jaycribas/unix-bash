#!/bin/bash
#Create a Bash script which will accept a file as a command line argument and analyse it in certain ways. eg. you could check if the file is executable or writable. You should print a certain message if true and another if false.
if [ -x $1 ] && [ -w $1 ]
then
  echo $1 is executable and writable
else
  echo Nope $1 is not executable and writable
fi
