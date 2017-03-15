#!/bin/bash

# Expand the previous activity so that if a number is supplied as the first command line argument then it will select from only words with that many characters. Hint: Grep may be useful here.
WORD_LENGTH=$( printf %$1s |tr " " "." )
WORDS = $( grep "^$WORD_LENGTH"$ /usr/share/dict/words )

# RANDOM_WORD=$( grep "^$WORD_LENGTH"$ /usr/share/dict/words | sed -n "$RANDOM"p )
RANDOM_WORD=$( printf -v $WORDS | sed -n "$RANDOM"p )


echo $RANDOM_WORD
