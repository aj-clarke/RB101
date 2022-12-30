NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  sum = 0
  digits = []
  string.each_char { |char| digits << NUMBERS[char] }
  digits.each do |num|
    sum = sum * 10 + num
  end
  sum
end

def string_to_signed_integer(string)
  negative = true if string[0].eql?('-')
  string.delete!('-') || string.delete!('+') if string[0].eql?('+') ||
                                                string[0].eql?('-')
  return -string_to_integer(string) if negative == true

  string_to_integer(string)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
