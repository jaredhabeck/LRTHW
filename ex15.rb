# sets filename to first argument
filename = ARGV.first

# assigns ">" to var prompt
prompt = "> "
# opens file and assigns to text
txt = File.open(filename)

# prints the filename assigned from first line
puts "Here's your file: #{filename}"
# reads entire file in one command, returning a string
puts txt.read()
# clean up file, always
txt.close()

# random instruction
puts "I'll also ask you to type it again:"
# prints out prompt for user
print prompt
# consumes STDIN input delimited by lines, then removes the \n with chomp
file_again = STDIN.gets.chomp()

# see line 6...
txt_again = File.open(file_again)

# see line 11
puts txt_again.read()
# clean up after yourself!
txt_again.close()
# additional notes, never knew =begin and =end were multiline comments
# irb for some reason is saying some File methods are undefined like directory?
# WHY?
