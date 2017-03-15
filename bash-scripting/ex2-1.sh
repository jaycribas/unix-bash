#!/bin/bash

#A good place to start is to create a simple script which will accept some command line arguments and echo out some details about them (eg, how many are there, what is the secone one etc).
cp $1 $2
echo "Number of arguments: $#"
echo "Second argument: $2"
