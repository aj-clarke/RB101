def reverse_words(str)
  str_array = str.split(' ')

  rev_str = str_array.map do |word|
    word.reverse! if word.length >= 5
    word
  end

  rev_str.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
