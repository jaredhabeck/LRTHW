filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

=begin refactoring this below
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end

#refactor per extra credit 3
target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
target.close()

# extra credit 2, writing a small read script for file just created
# TODO: WEIRD: you cannot read from a file you've opened in another stream to write
readFile = File.open(filename)
puts "Look what you just gone and did: "
puts readFile.read()

# extra credit 4: specifying 'w' tells open to open a file in write mode versus
# other ways such as 'r' for read.
# extra credit 5: truncate is a write operation, thus requiring write permission on the file.
