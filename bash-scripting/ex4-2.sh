#!/bin/bash
# Write a Bash script which will print tomorrows date. (Hint: use the command date)

date -r `expr $(date +%s) + 86400`
