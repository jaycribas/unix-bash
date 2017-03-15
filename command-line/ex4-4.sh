# Make a directory foo with a subdirectory bar, then rename the subdirectory to baz.
mkdir -p foo/bar && mv foo/bar foo/baz

# Copy all the files in text_files, with directory, into foo.
cp -r text_files foo

# Copy all the files in text_files, without directory, into bar.
cp -r text_files/* foo/baz

# Remove foo and everything in it using a single command.
rm -rf foo
