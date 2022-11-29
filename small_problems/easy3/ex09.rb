def palindrome?(string)
  return true if string.reverse.eql?(string)
  false
end

ALPHANUMERIC = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5
                  6 7 8 9 0)

def real_palindrome?(input)
  alpha_num = String.new
  input = input.downcase
  input.each_char { |char| alpha_num << char if ALPHANUMERIC.include?(char) }
  palindrome?(alpha_num)
end



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
