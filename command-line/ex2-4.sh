# By copying and pasting the text from the HTML version of Figure 17, use echo to make a file called sonnet_1_complete.txt containing the full (original) text of Shakespeare’s first sonnet. Hint: You may recall getting stuck when echo was followed by an unmatched double quote (Section 1.2 and Box 4), as in echo ", but in fact this construction allows you to print out a multi-line block of text. Just remember to put a closing quote at the end, and then redirect to a file with the appropriate name. Check that the contents are correct using cat (Figure 14).
# Type the sequence of commands needed to create an empty file called foo, rename it to bar, and copy it to baz.
# What is the command to list only the files starting with the letter “b”? Hint: Use a wildcard.
# Remove both bar and baz using a single call to rm. Hint: If those are the only two files in the current directory that start with the letter “b”, you can use the wildcard pattern from the previous exercise.

echo "FRom faireſt creatures we deſire increaſe,
That thereby beauties Roſe might neuer die,
But as the riper ſhould by time deceaſe,
His tender heire might beare his memory:
But thou contracted to thine owne bright eyes,
Feed’ſt thy lights flame with ſelfe ſubſtantiall fewell,
Making a famine where aboundance lies,
Thy ſelfe thy foe,to thy ſweet ſelfe too cruell:
Thou that art now the worlds freſh ornament,
And only herauld to the gaudy ſpring,
Within thine owne bud burieſt thy content,
And tender chorle makſt waſt in niggarding:
   Pitty the world,or elſe this glutton be,
   To eate the worlds due,by the graue and thee." > sonnet_1_complete.text

touch foo
mv foo bar
cp bar baz

ls b*

rm b*
