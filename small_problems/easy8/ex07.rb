def double_consonants(str)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
  consonants = alphabet.reject do |letter|
    letter =~ /[aeiouAEIOU]/
  end
  new_str = str.chars.map do |char|
    consonants.include?(char) ? char * 2 : char
  end
  new_str.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# regex to include and exclude at the same time /[a-zA-Z&&[^aeiou]]/