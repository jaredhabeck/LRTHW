print "How old are you?"
age = gets.chomp();
print "How tall are you?"
height = gets.chomp();
print "How much do you weigh?"
weight = gets.chomp();

puts "So you are #{age} years old, #{height} tall and weight #{weight} pounds."

# exercises
# gets - reads the next line from the I/O stream until separator
# chomp - returns a new string removing separators

# can be used to remove something from end of string by specifying char
puts "hello!".chomp("!")
