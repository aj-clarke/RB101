def reverse_sentence(str)
  new_str = ''

  return new_str if str.strip.empty?

  tmp_array = str.split(" ")
  loop do
    new_str << tmp_array.pop + " "
    break if tmp_array.empty?
  end

  new_str.rstrip!
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
puts reverse_sentence('Hello World') == 'Hello World' # => Test false return
