#!/bin/bash
#Create a simple script which will print the numbers 1 - 10 (each on a separate line) and whether they are even or odd.
counter=1
while [ $counter -le 10 ]
do
  modresult=$(( counter % 2 ))
  if [ $modresult = 0 ]
  then
    numtype=even
  else
    numtype=odd
  fi
  echo $counter $numtype
  ((counter++))
done
