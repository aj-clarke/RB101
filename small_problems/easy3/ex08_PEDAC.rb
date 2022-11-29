=begin
Question:

Palindromic Strings (Part 1)

Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.

----------------------
Problem:
Create a method that checks if a string passed in as an argument is a
palindrome. Return true if yes, and false if no.
A palendrome is a string of characters that reads the same even if reversed.

Explicit Requirements:
- Create a method that can have a string passed in as an argument.
- Validate if the string in reverse is equal to the original string.
- Case, punctuation, and spaces matter.
- Return true if it is a palindrome, and false if it is not.


Implicit Requirements:
- Do not modify the input since case, punctuation, and spaces matter.

----------------------

Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

----------------------

Data Structure: Strings
Input: String
Output: Boolean true/false from method

----------------------

Algorithm:

**PSEUDO - Informal**
- Create a method `palindrome?` with one parameter `string`
  - Validate if the string reversed matches the original string
  - If yes, Explicitly return true, if not Explicitly return false

**PSEUDO - Formal**
START
DEF METHOD palindrome?(string)
  RETURN true IF string.reverse.eql?(string)
  RETURN false
END

----------------------

Code

=end
