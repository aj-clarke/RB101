NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  digits = []
  loop do
    if int.eql?(0)
      return "0"
    else
      digits << int % 10
      int /= 10
    end
    break if int.eql?(0)
  end
  digits.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'