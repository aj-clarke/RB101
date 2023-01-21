def repeater(str)
  doubled_str = ''
  str.each_char { |char| doubled_str << char * 2 } # could double append like: << char << char
  doubled_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
