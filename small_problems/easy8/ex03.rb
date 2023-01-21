def substrings(str)
  result = []
  index_start = 0
  loop do
    break if index_start == str.size

    result << leading_substrings(str.slice(index_start..str.size))
    index_start += 1
  end
  result.flatten
end

def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |to_index|
    result << str.slice(0..to_index)
  end
  result
end


p substrings('abcde') == ['a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd', 'bcde', 'c', 'cd', 'cde', 'd', 'de', 'e']