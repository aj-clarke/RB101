def multiply(multiply_arr)
  multiply_arr.inject(:*)
end

def valid_integer?(int)
  int.to_i.to_s == int
end

arr_to_multiply = []
while arr_to_multiply.size < 2
  int_input = ''
  loop do
    puts 'Enter a valid integer:'
    int_input = gets.chomp
    break if valid_integer?(int_input)
    puts 'Invalid integer, please try again'
  end
  arr_to_multiply << int_input.to_i
end

p multiply(arr_to_multiply)
