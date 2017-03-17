# **Command Line & Bash Scripting Cheat Sheet**

---
## **UNIX**   
#### **Key	Symbols**
⌘ Command  
⌃ Control	  
⇧ Shift	  
⌥ Option	  
↑ ↓ ← → Up, down, left, right	  
↵ Enter/Return	  
⇥ Tab	  
⌫ Delete

#### **Shortcuts**
`^C` Escape (ESC may also work)  
`^A` Go to beginning of Line  
`^E` Go to end of line  
`^U` Clears to beginning of line  
`⌥ + Click` lets you mouse to somewhere in the middle of a line  
`^L` Clear  
`^D` Exit  
`^R` Search previous commands  
`⇥` When you've started typing something, may autocomplete file name (or type some of the file name)  
`^Z` Sends currently running process to background

#### **Special characters**
`~` shortcut for user folder  
`..` (two dots) shortcut for one folder up  
`.` shortcut for current folder  
`/` shorctut for root folder  
`>` Redirects to file  
`>>`  Appends to file  
`<`  Inputs a file to a process  
`!!` Run previous command  
`!string` Run last command that starts with "string" (put whatever starting letters you want)  
`*` Wildcard, e.g. rm -f *.txt would remove all text files  
`?` Wildcard for single character  
`[]` Put a range to be matched, for example [av] would look for a OR v, [0-9] would look for any digit, `[^a-k]` would look for NOT a letter between a-k. :upper: stands for uppercase letter
`&&` AND, or run multiple commands, will run if the previous one succeeds  
`||` OR  
`|` pipe result to a new command ( history | grep npm )  
`&` when put at end of command, runs the command in the background (e.g. sleep 5 &)  
`` used to save command output to variable instead of using command substitution (see examples)

#### **Commands**

`cd <path>` changes folder
* `cd -` navigates to previous directory  

`ls -hartl` lists files with options  
`mv <current path> <new path>` renames a file  
`cp <current path> <new path>` copies a file  
`cp -r <source dir> <new>` copy dir recursively, includes files inside  
`rm <path>` removes a files. Use `-f` to force  
`rm -rf <dir>` remove directory and its contents  
`mkdir -p ~/foo/bar ` -p used to make 2 nested directories simultaneously  
`echo <string>` Prints string to screen  
`cat <file> <optional additional files>` show contents, or concatenate  
`head <file>` shows beginning of file  
`tail <file>` shows end of file  
`nl` number lines  
`sort <path>`  
`uniq <path>` removes adjacent duplicate rows
`file <file>` shows filetype  
`diff <file1> <file2>` shows which lines are different  
`touch <filename>` creates an empty file (or updates last modified date)  
`find <path> -name '*.txt'` - search for text files  
`less <file>` shows file contents  
* when in less, can use `/word` to search for word
* `n` goes to next instance, `N` goes to previous
* ^F or `space` goes to next page, ^B or `b` moves back a page

`clear` clears the screen  
`exit` exits  
`history` see command line history  
`sleep <seconds>` sleeps the terminal for entered seconds  
`which <command>` lets us know if a command is installed  
`man <command>` Get info about command  
`man -k <search term>` Search the manual  
`jobs` lists currently running jobs  
`top` realtime info about processes  
`ps` show data on processes  
`kill <process num>` kill a process  
`fg <job number>` brings a job from background to foreground  

#### **Permissions**
`chmod`
* Who: `g` (group), `u` (owner), `o` (others)
* Use `+` to add, `-` to remove
* `r` for read, `w` for write, `x` for execute
* Example: `chmod go-xw frog.png`  - this would give the group and others execute and write
* Can use octal numbers to set permissions e.g. `chmod 755 frog.png `gives the owner all, the group and others read and execute

#### **VI - Text editor**
`vi <filename>` opens file in editor (creates it if it doesn't exist)
* press `i` to enter insert mode, `esc` to enter edit mode  
* `ZZ` (Note: capitals) - Save and exit  
* `:q!` discard all changes, since the last save, and exit  
* `:w` save file but don't exit  
* `:wq` again, save and exit  

**VI Navigation**
* `Arrow keys` move the cursor around  
* `j, k, h, l` move the cursor down, up, left and right (similar to the arrow keys)  
* `^` (caret) move cursor to beginning of current line  
* `$` move cursor to end of the current line  
* `nG` move to the nth line (eg 5G moves to 5th line)  
* `G` move to the last line  
* `w` move to the beginning of the next word  
* `nw` move forward n word (eg 2w moves two words forwards)  
* `b` move to the beginning of the previous word  
* `nb` move back n word  
* `{` move backward one paragraph  
* `}` move forward one paragraph  

#### **Regular Expressions**
`.` a single character.  
`?` the preceding character matches 0 or 1 times only.  
`*` the preceding character matches 0 or more times.  
`+` the preceding character matches 1 or more times.  
`{n}` the preceding character matches exactly n times.  
`{n,m}` the preceding character matches at least n times and not more than m times.  
`[agd]` the character is one of those included within the square brackets.  
`[^agd]` the character is not one of those included within the square brackets.  
`[c-f]` the dash within the square brackets operates as a range. In this case it means either the letters c, d, e or f.  
`()` allows us to group several characters to behave as one.  
`|` (pipe symbol) - the logical OR operation.  
`^` matches the beginning of the line.  
`$` matches the end of the line.  

#### **Command Line Examples**
`build_article && cd ~/tau && deploy && cd -`  
Example of running multiple commands

    lines=`cat $1 | wc -l`  
    echo The number of lines in the file $1 is $lines  
Using backticks to save output of a command to a variable instead of command substitution

`grep -ri sesquipedalian text_files`  
Recursive and case insensitive  

`sed 's/oranges/bananas/g' mysampledata.txt`  
Replace all instances of oranges with bananas

`cut -f 1,2 -d ' ' mysampledata.txt`  
gives first two fields, space delimited

`egrep -n 'mellon' mysampledata.txt`  
Returns every line that contains "mellon", with line number

`wc -l < barry.txt > myoutput`  
do a linecount on barry.txt, and send it to myoutput

`ls | head -3 | tail -1 > myoutput`  
Get the third line of ls and send it to myoutput

`kill -9 6978`  
Forcefully kill process 6978

---

## **Bash Scripting**
`#!/bin/bash`  shebang, start all .sh files with this line to run script

### **Variables**
#### Environment Variables
`env` show all current environment variables  
`$0` The name of the Bash script.  
`$1-$9` The first 9 arguments to the Bash script. (As mentioned above.)  
`$#` How many arguments were passed to the Bash script.  
`$@` All the arguments supplied to the Bash script.  
`$?` The exit status of the most recently run process.  
`$$` The process ID of the current script.  
`$USER` The username of the user running the script.  
`$HOSTNAME` The hostname of the machine the script is running on.  
`$SECONDS` The number of seconds since the script was started.  
`$RANDOM` Returns a different random number each time is it referred to.  
`$LINENO` Returns the current line number in the Bash script.  

#### Custom Variables
`var=$( command )`  set command to variable for command substitution  
`“Something something $var”`  double quotes for command substitution

### **Input**

3 methods:
* command line argument
* `read` input during script execution
* accept data redirected into script via STDIN  

`read varname`  assign user input into variable  
`read -p  ‘Some text: ‘ sometext`  specify a prompt on same line  
`read -sp ‘Password: ‘ pass`  makes input silent as user types

### **Arithmetic**

let a built in function for simple arithmetic
* `let a=5+4`  without quotes, no spaces
* `let “a = 5 + 4”`  with quotes, you can add spaces

expr  prints result instead of saving to variable  
* `expr 5 + 4`  must have spaces to do math
* `a=$( expr 5 + 4 )`  set result to variable

$(( double parentheses ))  set result of basic math to variable
* `a=$(( 5 + 4 ))`  spaces for readability
* `a=$((b*4))` spaces optional, variables don’t need $, no escape sign \ needed for `*`  

`${#variable}`  returns character length of variable

### **If Statements**

    if [ <some test> ]  
    then  
     <commands>  
    fi  

`[ <some test> ]`  test will return 0 for true, 1 for false  
* `=`  compares strings
* `-eq`  numerically equal
* `-ne`  numerically not equal
* `-gt`  numerically greater than
* `-lt`  numerically less than
* `-d`  file exists and is a directory
* `-e`  file exists
* `-r`  file exists and read permission granted
* `-w`  file exists and write permission granted
* `-x`  file exists and is executable
* `test`  use on command line to experiment/troubleshoot

**Elif** series of conditions with different commands  

    if [ <some test> ]
    then
      <commands>
    elif [ <some test> ]
    then
      <different commands>
    else
      <other commands>
    fi

**Boolean Operations**  only do something if multiple conditions true  
* `&&` and
* `||`  or


    if [ -r $1 ] && [ -s $1 ]
    then
      echo This is awesome.
    else
      echo Meh.
    fi

**Case Statements**

    case <variable> in
    <pattern 1>)
      <commands>
      ;;
    <pattern 2>)
      <other commands>
      ;;
    esac

### **Loops**

**While Loops**  keep executing while test is true

    while [ <some test> ]
    do
      <commands>
    done

**Until Loops** execute command until test is true

    until [ <some test> ]
    do
      <commands>
    done

**For Loops**  takes each item in a list (strings, numbers, files), runs command for each item

    for var in <list>
    do
      <commands>
    done

**Controlling Loops**  
`break`  exit the currently running loop  
`continue`  stop this iteration of a loop, begin the next iteration  
`select`  simple menu system for selecting items from a list

### **Functions**

    function_name () {
      <commands>
      echo Hello $1
    }

  —  or — 

    function function_name {
      <commands>
      echo Hello $1
    }

`function_name Argument`  
supply argument right after function name
