=begin
Question:
Reverse It (Part 1)
Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String literal
Output: New string literal with words in string in reverse order
Rules:
  Explicit Requirements
  - Method takes in one string as an argument
  - Method returns a new string with words in reverse order

  Implicit Requirements
  - Empty string returns empty string
  - Characters are not mutated as their position is being transformed

-----------------------
Examples:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

-----------------------
Data Structure: String split into array to transform as required, then converted
                back to string for return value
Algorithm:
- Define `reverse_sentence` with param `str`
- Explicitly return an empty string if deleting spaces out of `str` is equal to
  an empty string
- Initialize `result` to empty array
- Split words in `str`, using space as delimiter, into an array and chain a method
  to place the current `word` in the `result` array in required order
  - During each iteration, force the current element into the 0 index position
    of the `result` array
- Implicitly return `result` joined together into a new string using space as
  delimiter



-----------------------
Code:
=end