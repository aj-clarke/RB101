def word_sizes(str)
  str_count = {}
  str_arr = str.split
  str_arr.each { |word| str_count[word.size] ? str_count[word.size] += 1 : str_count[word.size] = 1 }
  str_count
end

# Neat solution found by another LS student
# def word_sizes(s)
#   s.split.map(&:length).tally # => Enumerable method
# end

p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
