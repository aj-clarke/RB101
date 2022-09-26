=begin
Question:

Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.

----------------------
Problem:
Create a method that reverses the words in a given string.

Explicit Requirements:
- Method takes only one argument
  - A string
- Words order must be reversed
- Any number of spaces without characters results in '' being returned
- Provided examples should print boolean true value
- Return a NEW STRING

Implicit Requirements:
- Examples that are not true should print false
- Do not reverse individual words themselves (not hello => olleh)

Inputs:
String

Outputs:
New string in reverse order

----------------------

Examples:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

----------------------

Data Structure:
Input: String
Output: New String

----------------------

Algorithm:

**PSEUDO - Informal**
see if stripping all empty spaces equals empty string
- Create method with one parameter, string, for string injestion
- Create variable for new string placeholder
- Set variable to equal splitting string into an array
- Validate if 'string' with the strip method returns empty
  - If so, return new string equal to ''
- Loop through new string array until empty
  - Use pop method to remove last entry off of temp array and append
    that to the new string
  - Concatenate empty space to the right
  - Break if temp array is empty
- Strip any extra empty space to the right
- Return new string


**PSEUDO - Formal**
START
DEF METHOD reverse_sentence(str)
  SET new_str = ''
  IF str.strip.empty?
    return new_str
  END IF

  WHILE str.empty? == false
    POP str + " " and append to new_str
  END WHILE
  SET new_str.rstrip!
END

----------------------

Code

=end
