=begin
Question:
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

-----------------------
Rules:
  Explicit Requirements
  - Convert any numbers from 0 - 9 in the input string to their repspective words (1 => one)

  Implicit Requirements

-----------------------
Examples:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

-----------------------
Modeling:
'three four and five.' => '3 4 and 5.'
hash of words => integer

hash => {'one' => 1 .....}

`arr` => array of `str` words => ['Please', 'call', 'me', 'at', 'five.'....'Thanks.']

Iterate to transform the elements |word|
  If current word matches any value in the hash
    hash[word] => integer returned
  ELSIF word[0...word.size] matches any value in the hash
    hash[word] => integer returned + '.'
  ELSE
    word
Join back with a space

-----------------------
Data Structure:
I: String
W: 
  - Hash of words/integer (represented as a char)
  - Array of words
O: Mutated string

Algorithm:
< given a string `str` >

Init `arr` to splitting up input string into words
hash = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

Iterate to transform the elements |word|
  If current word matches any value in the hash
    Call the hash with the current `word` as the key to return the required integer => integer returned
  ELSIF word[0...word.size] matches any value in the hash
        Call the hash with the current `word` as the key to return the required integer => integer returned + '.'
  ELSE
    word
Join back with a space

-----------------------
Code:
=end

def word_to_digit(str)
  arr = str.split
  hash = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

  arr.map! do |word|
    if hash.keys.include?(word)
      hash[word]
    elsif hash.keys.include?(word[0...word.size-1])
      word = hash[word[0...word.size-1]]
      word << '.'
    else
      word
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

/\b#{val}\b/, key