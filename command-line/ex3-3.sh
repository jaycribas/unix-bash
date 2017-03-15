# ex 1:
# Run less on sonnets.txt. Go down three pages and then back up three pages. Go to the end of the file, then to the beginning, then quit.
less sonnets.txt
# ^F ^F ^F
# ^B ^B ^B
# G
# 1G
# Q

# ex 2:
# Search for the string “All” (case-sensitive). Go forward a few occurrences, then back a few occurrences. Then go to the beginning of the file and count the occurrences by searching forward until you hit the end. Compare your count to the result of running grep All sonnets.txt | wc. (We’ll learn about grep in Section 3.4.)
less sonnets.txt
/all
# “All” count: 10
desktop grep All sonnets.txt | wc
# 10 86 462

# ex 3:
# Using less and / (“slash”), find the sonnet that begins with the line “Let me not”. Are there any other occurrences of this string in the Sonnets? Hint: Press n to find the next occurrence (if any). Extra credit: Listen to the sonnet in both modern and original pronunciation. Which version’s rhyme scheme is better?

/“Let me not”
# N
# Pattern not found.

# ex 4:
# Because man uses less, we are now in a position to search man pages interactively. By searching for the string “sort” in the man page for ls, discover the option to sort files by size. What is the command to display the long form of files sorted so the largest files appear at the bottom? Hint: Use ls -rtl as a model.

# Still Needs Answer
