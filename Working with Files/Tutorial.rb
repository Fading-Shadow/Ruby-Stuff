file = File.open("Working with Files/input.txt", "a+") # opening an existing file
puts file.size  # prints the file size ( size of the string )
puts file.readline # reads the first line
# file.read  -> does the same as above
puts file.getc.chr  # reads content on a char by char basis
# file.getc does the same as above
file.rewind # move pointer back to start of file
puts file.getc
file.print "\nAyaye" # writing in the file