# String
def palindrome?(string)
  return true if string.reverse.eql?(string)
  false
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Array
def palindromic(arr)
  return true if arr.reverse.eql?(arr)
  false
end

p palindromic(['mom','mom']) == true
p palindromic(['mom','Mom']) == false

# String or Array
def str_or_arr_palindrome?(item)
  p item.reverse
  return true if item.reverse.eql?(item)
  false
end

p str_or_arr_palindrome?('madam') == true
p str_or_arr_palindrome?('Madam') == false          # (case matters)
p str_or_arr_palindrome?("madam i'm adam") == false # (all characters matter)
p str_or_arr_palindrome?('356653') == true
p str_or_arr_palindrome?(['mom','mom']) == true
p str_or_arr_palindrome?(['mom','Mom']) == false
p str_or_arr_palindrome?([1,2,3,4,3,2,1]) == true
p str_or_arr_palindrome?([2,3,4,5,2]) == false
