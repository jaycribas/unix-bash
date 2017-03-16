#!/bin/bash
#Create a Bash script which will print a message based upon which day of the week it is (eg. 'Happy hump day' for Wedensday, 'TGIF' for Friday etc).
DOW=$(date +%u)
case $DOW in
  1)
    echo Just another manic Monday
    ;;
  2)
    echo Hey it\'s Tuesday!
    ;;
  3)
    echo Happy hump day
    ;;
  4)
    echo Almost there
    ;;
  5)
    echo TGIF
    ;;
  6)
    echo Sleep in
    ;;
  7)
    echo Sunday FUNday
    ;;
esac
