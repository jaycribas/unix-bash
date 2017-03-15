# According to the man page, what are the official short and long descriptions of echo on your system?

# A: Did not paste echo descriptions here, but we got them by typing man echo

# As seen in Listing 1, by default the echo command prints its argument to the screen and then puts the new prompt on a new line. The way it does this is by appending a special character called a newline (a special character that literally puts the string on a new line, written in many contexts as “backslash n” \n). Because echo is often used in programs to print out a sequence of strings not separated by newlines, there is a special command-line option to prevent the newline from being inserted.
# By reading the man page for echo, determine the command needed to print out “hello” without the trailing newline, and verify using your terminal that it works as expected. Hints: To determine the placement of the command-line option, it may help to refer to Figure 5. By comparing your result with Listing 4 and Listing 5, you should be able to verify that you’ve used the option properly. (Note: This exercise may fail when using the default terminal program on some older versions of macOS. In this case, I recommend installing iTerm (which isn’t a bad idea anyway).)


echo "hello" # with trailing new line
echo -n "hello" # without trailing new line
