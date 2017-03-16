#!/bin/bash
# Create a script which will take data from STDIN and print the 3rd line only.
cat /dev/stdin | sed -n '3p'
