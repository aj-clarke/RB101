# def leading_substrings(str)
#   to_index = 0
#   result = []
#   loop do
#     break if to_index.eql?(str.size)
#     result << str.slice(0..to_index)
#     to_index += 1
#   end
#   result
# end

def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |to_index|
    result << str.slice(0..to_index)
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']