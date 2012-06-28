input_file = ARGV[0]

# putting the contents of the file output by .read directly
def print_all(f)
  puts f.read()
end

# seeks to point in file specified by first arg, in this case
# to absolute location due to IO::SEEK::SET.
# IO_SEEK_CUR = amount + current pos
# IO::SEEK_END = seeks to amount plus end of stream (use neg val)
def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

# readline iterates an internal counter and keeps track of it, crazy!
# more like a pointer in the file I guess, to current line
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts

print_all(current_file)

puts "Now rewind."

rewind(current_file)

puts "print three lines."

# it is calling print_a_line 3 times, iterating readline 3 times.
# curr line = 1
current_line = 1
print_a_line(current_line, current_file)

#curr line = 2
current_line += 1
print_a_line(current_line, current_file)

# curr line = 3
current_line += 1
print_a_line(current_line, current_file)

#extra credit
# 1) see comments added on functions
# 2) see print_a_line functions
# 3) skipped
# 4) seek commented above
# 5) += done
