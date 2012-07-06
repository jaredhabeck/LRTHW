# exercise refactor
def number_stack(num)
  numbers = []

  (0..num - 1).each do |i|
    puts "At the top i is #{i}"
    numbers.push(i)

    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  numbers
end

puts "The numbers: "

for num in number_stack(10)
  puts num
end
