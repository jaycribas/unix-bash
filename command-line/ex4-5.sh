# Starting in your home directory, execute a single command-line command to make a directory foo, change into it, create a file bar with content “baz”, print out bar’s contents, and then cd back to the directory you came from. Hint: Combine the commands as described in Box 12.
 mkdir foo && cd foo && echo baz > bar && cat bar && cd -

# What happens when you run the previous command again? How many of the commands executed? Why?
# A: None of them executed, because we used && which will only run subsequent commands if the previous ones succeeded. It did not succeed because foo already exists

# Explain why the command rm -rf / is unbelievably dangerous, and why you should never type it into a terminal window, not even as a joke.
# this would delete everything in your computer from root, and all of its subdirectories

# How can the previous command be made even more dangerous? Hint: Refer to Box 11. (This command is so dangerous you shouldn’t even think it, much less type it.)
# Using sudo, it would do this without even checking if it's what your really meant to do
