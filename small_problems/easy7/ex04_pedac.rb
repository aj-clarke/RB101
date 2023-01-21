=begin
Question:
Swap Case
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Return new string with uppercase/lowercase letters all swapped
- All other characters should remain the same
Input: String
Output: New string with character case swapped
Rules:
  Explicit Requirements
  - Returns a NEW String
  - Uppercase chars replaced with lowercase, and lowercase char with uppercase
  - All others remain the same

  Implicit Requirements

-----------------------
Examples:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

-----------------------
Data Structure: Array to convert characters
Algorithm:
- Define method `swapcase` with param `str`
- Assign variable `new_str` to breaking `str` up by word into an array, making
  each word its own element
  - Iterate through each `word`
    - Initialize `word_split` to breaking up each `word` into individual chars
      in an array
      - Iterate through each character
        - If char is equal to calling lowercase, then upcase, else if equal to
          uppcercase, then downcase it.
    - Join each character back into a word in array
- Join each word back into a string with a space delimiter

-----------------------
Code:
=end
