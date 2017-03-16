#!/bin/bash
#Write a Bash script which will take a single command line argument (a directory) and will print each entry in that directory. If the entry is a file it will print it's size. If the entry is a directory it will print how many items are in that directory.
for value in $1/*
do
  if [ -d $value ]
  then
    dir=$(ls -1q $value | wc -l)
    echo $value $dir items
  else
    filesize=$(ls -nl $value | awk '{print $5}')
    echo $value $filesize bytes
  fi
done
