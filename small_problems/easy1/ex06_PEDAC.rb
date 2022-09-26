=begin
Question:

Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters
reversed. Each string will consist of only letters and spaces. Spaces should be
included only when more than one word is present.

----------------------
Problem:

Create a method with one parameter that takes one string argument of one or more
words. Return the given string with words that have 5 or more characters
reversed. Dealing only with letters and spaces, and spaces only required when
dealing with more than one word.

Explicit Requirements:
- Only mutate words that are 5 or more characters in length
- Only letters and spaces being passed to method
- Spaces necessary only when more than one word in string

Implicit Requirements:
- Do not mutate words less than 5 characters long
- Return new string with manipulated words

Inputs:
String of word or words (and spaces)

Outputs:
String of word or words (and spaces) mutated if criteria met

----------------------

Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

----------------------

Data Structure: Array to mutate words

----------------------

Algorithm:

**PSEUDO - Informal**
- Create method that ingests one string
- Create variable str_array to Split string
- Iterate through str_array
  - If str_array word greater than or equal to 5
    - Reverse word
    - Otherwise leave the word as is
- Set new_string to join str_array with one blank space " "
- Return new_string


**PSEUDO - Formal**
START
DEF METHOD reverse_words(str)
  SET str_array = str.split(' ')

  MAP to rev_str, str_array word
    word.reverse! IF word.length >= 5
    word
  END EACH

  SET rev_str_array.join(' ')
END METHOD
END

----------------------

Code

=end
