

# exercises

#
# The history command prints the history of commands in a particular terminal shell (subject to some limit, which is typically large). Pipe history to less to examine your command history. What was your 17th command?
# By piping the output of history to wc, count how many commands you’ve executed so far.
# One use of history is to grep your commands to find useful ones you’ve used before, with each command preceded by the corresponding number in the command history. By piping the output of history to grep, determine the number for the last occurrence of curl.
# In Box 9, we learned about !! (“bang bang”) to execute the previous command. Similarly, !n executes command number n, so that, e.g., !17 executes the 17th command in the command history. Use the result from the previous exercise to re-run the last occurrence of curl.
# What do the O and L options in Listing 10 mean? Hint: Pipe the output of curl -h to  less and search first for the string -O and then for the string -L.

history | less
history | wc
history | grep curl
!174

# -L stands for "location, follow redirects"
# -O  stands for --remote-name   Write output to a file named as the remote file
     #           --remote-name-all  Use the remote file name for all URLs
