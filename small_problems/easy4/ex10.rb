def integer_to_string(int)
  digits = []
  loop do
    digits << int % 10
    int /= 10
    break if int.eql?(0)
  end
  digits.reverse.join
end

def signed_integer_to_string(int)
  # negative = nil
  lead = ''
  return '0' if int.eql?(0)
  if int > 0
    lead = '+'
  else
    int *= -1
    lead = '-'
  end
  result = integer_to_string(int)
  result.insert(0, lead)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'