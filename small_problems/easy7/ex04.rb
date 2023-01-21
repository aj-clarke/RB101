def swapcase(str)
  new_str = str.split.map do |word|
    word_split = word.split('').each do |char|
      char == char.downcase ? char.upcase! : char.downcase!
    end
    word_split.join
  end
  new_str.join(' ')
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'


# Nick Perry
# def swapcase(string)
#   string.chars.map do |char|
#     if char == char.downcase
#       char.upcase
#     elsif char == char.upcase
#       char.downcase
#     else
#       char
#     end
#   end.join
# end