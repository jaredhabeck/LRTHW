test = {
  "true and true" => true,
  "false and true" => false,
  "1 == 1 and 2 == 1" => false,
  "'test' == 'test'" => true,
  "1 == 1 or 2 != 1" => true, 
  "true and 1 == 1" => true,
  "false and 0 != 0" => false,
  "true or 1 == 1" => true,
  "'test' == 'testing'" => false,
  "1 != 0 and 2 == 1" => false,
  "'test' != 'testing'" => true,
  "'test' == 1" => false,
  "not (true and false)" => true,
  "not (1 == 1 and 0 != 1)" => true,
  "not (10 == 1 or 1000 == 1000)" => false,
  "not ('testing' == 'testing' and 'Jared' == 'Cool Guy')" => false,
  "1 == 1 and not ('testing' == 1 or 1 == 0)" => true,
  "'chunky' == 'bacon' and not (3 == 4 or 3 == 3)" => false,
  "3 == 3 and not ('testing' == 'testing' or 'Ruby' == 'Fun')" => false
}

score = 0
count = 1
total = test.size
test.each do |question, solution|
  puts "#{count}) #{question}"
  print '?> '
  answer = STDIN.gets.chomp
  # simplest input check ever? if you can't answer correctly you answer false!
  answer = answer == "true" ? true : false;
  if (answer == solution)
    puts 'correct!'
    score += 1
  else
    puts '*incorrect*'
  end
  count += 1
  puts "Your score is #{score}/#{total}!";
end
