#!/bin/bash
# Now let's create a script which will take a filename as its first argument and create a dated copy of the file. eg. if our file was named file1.txt it would create a copy such as 2017-03-15_file1.txt. (To achieve this you will probably want to play with command substitution and the command date)
DATED_FILE=$( date +%Y-%m-%d )
cp $1 $DATED_FILE"_"$1
