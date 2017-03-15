#!/bin/bash
# Add to the previous script to add in some data coming from command line arguments and maybe some of the other system variables.
read -p 'What is your name? ' name
read -p 'What is your favorite color? ' color
echo Hi $name, I like $color too!
echo Your first argument was $1
echo Your second one was $2
echo The process ID is $$
echo The user is $USER
echo Your hostname is $HOSTNAME 
