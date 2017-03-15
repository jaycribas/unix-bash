#!/bin/bash
# Create a simple script which will ask the user for a few pieces of information then combine this into a message which is echo'd to the screen.
read -p 'What is your name? ' name
read -p 'What is your favorite color? ' color
echo Hi $name, I like $color too!
