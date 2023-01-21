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

def palindromes(str)
  palindrome_sub_strings = []
  sub_strings = substrings(str)
  sub_strings.each do |string|
    next if string.length.eql?(1)

    palindrome_sub_strings << string if string.eql?(string.reverse)
  end
  palindrome_sub_strings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]