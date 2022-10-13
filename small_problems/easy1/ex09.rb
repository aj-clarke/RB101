# Original Method
# def sum_of_digits(int)
#   int.digits.sum
# end

# Alternate Method without basic looping constructs (while, until, loop, each)
def sum_of_digits(int)
  int_str_arr = int.to_s.split('')
  int_arr = int_str_arr.map(&:to_i) # { |element| element.to_i }
  int_arr.sum
end

puts sum_of_digits(23) == 5
puts sum_of_digits(496) == 19
puts sum_of_digits(123_456_789) == 45
