def word_sizes(string)
  return {} if string.empty?
  words = string.downcase!.split
  transform = words.map do |word|
    word = word.split("").select { |char| ALPHABET.include?(char) }
    word.join
  end
  word_size_count(transform)
end

def word_size_count(arr)
  hash = {}
  word_sizes = []
  arr.each { |word| word_sizes << word.size }
  temp_sizes = word_sizes.dup.uniq
  temp_sizes.each { |size| hash[size] = word_sizes.count(size) }
  hash
end

ALPHABET = ('a'..'z').to_a

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
