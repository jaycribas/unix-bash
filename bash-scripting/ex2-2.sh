#!/bin/bash

#Create a script which will print a random word. There is a file containing a list of words on your system (usually /usr/share/dict/words or /usr/dict/words). Hint: Piping will be useful here.

RANDOM_WORD=$( sed -n "$RANDOM"p /usr/share/dict/words )
echo $RANDOM_WORD
