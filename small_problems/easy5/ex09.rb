def crunch(str)
  # return String.new if str.empty? # String.new satisifes new string req.
  # return str.dup if str.size.eql?(1) # dup method satisfies new string req.
  result = []
  placeholder = []
  arr = str.split
  arr.each do |word|
    current_letter = ''
    word.each_char do |char|
      if char.eql?(current_letter)
        next
      else
        placeholder << char
        current_letter = char
      end
    end
    result << placeholder.join
    placeholder = []
  end
  result.join(" ")
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''