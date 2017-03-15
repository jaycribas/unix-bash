#!/bin/bash
# Challenge: To make it a bit harder, see if you can get it so that the date if after the name of the file (eg. file1_2017-03-15.txt (The command basename can be useful here.)
DATED_FILE=$( date +%Y-%m-%d )
filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"
# fbname=$(basename "$1" | cut -d. -f1)

cp $1 $filename"_"$DATED_FILE"."$extension
