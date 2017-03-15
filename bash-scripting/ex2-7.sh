#!/bin/bash
# Challenge: Now see if you can expand the previous question to accept a list of files on the command line and it will create a named copy of all of them. (The command xargs may be useful here.)

DATED_FILE=$( date +%Y-%m-%d )
filename=$(basename "$@")
extension="${filename##*.}"
filename="${filename%.*}"
# fbname=$(basename "$1" | cut -d. -f1)
echo $@
echo $filename
echo $extension
# LIST=$($@ -print | xargs -I % echo %)
# $@ | xargs -0 -I basename -s .sh | xargs -I {} cp {}.sh $DATED_FILE{}.sh
$@ | xargs -0 -I basename -s .sh

# cat $@ | xargs -I % echo cp % $filename"_"$DATED_FILE"."$extension
# ls *.svg.png | xargs basename -s .svg.png | xargs -I {} mv {}.svg.png {}.png
