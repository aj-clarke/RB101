ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def cleanup(string)
  p string.object_id # original object ID
  counter = 0
  loop do
    break if counter.eql?(string.size)

    if ALPHABET.include?(string[counter]) == false
      string.gsub!(string[counter], ' ')
    end

    counter += 1
  end
  # below returns same string or can use the squeeze method; but that
  # creates/returns a new string if you do not use the destructive
  # squeeze! version. Noticed most students used just squeeze with no !
  while string.match('  ')
    string.gsub!('  ', ' ')
  end
  p string.object_id # same object ID
  string
end

p cleanup("---what's my +*& line?") == ' what s my line '
