Command Line Cheat Sheet
========================
## Keyboard Shorcuts

### Key	Symbol
Command	⌘  
Control	⌃  
Shift	⇧
Option	⌥  
Up, down, left, right	↑ ↓ ← →  
Enter/Return	↵  
Tab	⇥  
Delete	⌫

### Shortcuts
^C - Escape (ESC may also work)  
^A - Go to beginning of Line  
^E - Go to end of line  
^U - Clears to beginning of line  
⌥ + Click - lets you mouse to somewhere in the middle of a line  
^L - Clear  
^D - Exit  
^R - Search previous commands  
⇥ - When you've started typing something, may autocomplete file name (or type some of the file name)

## Special characters
~ - shortcut for user folder  
.. - shortcut for one folder up  
. - shortcut for current folder  
/ - shorctut for root folder  
">" - Redirects to file  
">>" -  Appends to file  
!! - Run previous command  
!ch - Run last command that starts with "ch" (put whatever starting letters you want)  
"*" - Wildcard, e.g. rm -f *.txt would remove all text files  
&& - AND, or run multiple commands  
|| - OR

## Commands

cd [path] - changes folder
* "cd -" navigates to previous directory  

ls -hartl - lists files with options  
mv [current path] [new path] - renames a file  
cp [current path] [new path] - copies a file  
rm [path] - removes a files. Use -f to force  

clear - clears the screen  
exit - exits  
sleep [seconds] - sleeps the terminal for entered seconds    
which [command] - lets us know if a command is installed  
man [command] - Get info about command  

echo [string] - Prints string to screen  
cat [file] [optional additional files] - show contents, or concatenate  
head [file] - shows beginning of file
tail [file] - shows end of file
diff [file1] [file2] - shows which lines are different  
touch [filename] - creates an empty file (or updates last modified date)  
find [path] -name '*.txt' - search for text files  
less [file] - shows file contents
* when in less, can use /word to search for word
* n goes to next instance, N goes to previous
* ^F or space goes to next page, ^B moves back a page






## Common Environment Variables
$0 - The name of the Bash script.  
$1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)  
$# - How many arguments were passed to the Bash script.  
$@ - All the arguments supplied to the Bash script.  
$? - The exit status of the most recently run process.  
$$ - The process ID of the current script.  
$USER - The username of the user running the script.  
$HOSTNAME - The hostname of the machine the script is running on.  
$SECONDS - The number of seconds since the script was started.  
$RANDOM - Returns a different random number each time is it referred to.  
$LINENO - Returns the current line number in the Bash script.  

## Examples
build_article && cd ~/tau && deploy && cd -  

grep -ri sesquipedalian text_files  
Recursive and case insensitive  
