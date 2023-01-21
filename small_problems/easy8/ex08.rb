def reverse_sentence(str)
  # return '' if str.delete(' ').eql?('')
  # result = []
  str.split(' ').reverse.join(' ') # .each { |word| result.unshift(word) }.join
  # result.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''