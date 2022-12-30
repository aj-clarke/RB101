=begin
Question:
Clean up the words
Given a string that consists of some words (all lowercased) and an assortment of
non-alphabetic characters, write a method that returns that string with all of
the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result (the
result should never have consecutive spaces).

-----------------------
Problem:
- Write a method that returns string with non-alphabetic characters replaced by spaces
- Only one space if mulitple non-alphabetic characters occur in a row
  - Should never be consecutive spaces

Input: String
Middle: Referencing a constant array
Output: Mutated string
Rules:
  Explicit Requirements
  - Method should return string with non-alphabetic characters replaced by spaces
  - No more than one consecutive space should occur in the result
  - Return mutated string, not new string
  - Spaces should also be reduced into a single space

  Implicit Requirements

-----------------------
Examples:
cleanup("---what's my +*& line?") == ' what s my line '

-----------------------
Data Structure / Algorithm:
**PSEUDO - Informal**
- Create a constant `ALPHABET` initialized to a string consisting of the full lowercased alphabet
- Create a counter for index iteration
# - Create method `cleanup` with one param of `string`
# - Create a variable `cleanup` initialized to empty String
# - Create a varaible `index_pos_for_space` intitialized to nil
- Loop through the string
  - Set break condition if `counter` is equal to the strings size/length
  - If the strings index position (via the counter variable) does not equal a
    character within the ALPHABET constant, substitute it for a space.
  - Increment the counter by 1
- Find pattern of double spaces and reduce it to a single space while that
  pattern exists
- Return `string`

-----------------------
Code:
=end
