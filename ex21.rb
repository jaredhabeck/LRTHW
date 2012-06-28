def add(a, b)
  puts "Adding #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "Subtracting #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "Multiply #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "Dividing #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions."

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"

# E.C.
# 2)
formula = age + (height - (weight * (iq/2)))
puts "Updated formula answer is: #{formula}"
# 3)
new_formula = height + (weight - (iq * (age/2)))
puts "Updated(2) formula answer is: #{new_formula}"
# 4)
newest_formula = divide(weight, subtract(height, add(iq, multiply(age, 2))))
puts "Updated(3) formula answer is: #{new_formula}"
# um. WTF. I got the same answer with my new formula...
