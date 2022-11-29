puts 'Please input a word or multiple words:'
char_input = gets.chomp
char_input_no_spaces = char_input.dup
char_input_no_spaces.slice!(" ")
num_of_char = char_input_no_spaces.size

puts "There are #{num_of_char} characters in \"#{char_input}\"."
