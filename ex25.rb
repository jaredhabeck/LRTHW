module Ex25
  def self.break_words(stuff)
    # this function breaks up words
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    # Sorts the words.
    words.sort()
  end

  def self.print_first_word(words)
    # Prints the first word and shifts other down by one
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    # prints the last word after popping it off the end
    word = words.pop()
    puts word
  end

  def self.sort_sentence(sentence)
    # takes sentence and returns sorted words
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    # Prints first and last words of a sentence
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # sorts the owrds then prints the first and last one
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end

# Exercises
# 1) print_first_and_last is doing a space based split, then using previously
# written functions print_first_word and print_last_word to shift and pop
# respectively.
# print_first_and_last_sorted is similar but it is calling the sort_sentence
# method which implicitly calls the break_words method then the sort_words
# method.
