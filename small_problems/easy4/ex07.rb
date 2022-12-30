NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
            '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
            'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

# def string_to_integer(string)
#   sum = 0
#   digits = []
#   string.each_char { |char| digits << NUMBERS[char] }
#   digits.each do |num|
#     sum = sum * 10 + num
#   end
#   sum
# end

# # Alternate solution by LS Student
# # def string_to_integer(num)
# #   target = 0
# #   loop do
# #     target += 1
# #     break if target.to_s == num
# #   end
# #   target
# # end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

def hexadecimal_to_integer(string)
  sum = 0
  digits = []
  string.upcase.each_char { |char| digits << NUMBERS[char] }
  p digits
  digits.each do |num|
    sum = sum * 10 + num
  end
  p sum
  sum
end

p hexadecimal_to_integer('4D9f') == 19871