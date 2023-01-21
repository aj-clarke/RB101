=begin
Question:
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every
character is doubled.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String
Output: String with each character in string doubled
Rules:
  Explicit Requirements
  - Each character in the input string should be doubled
  - Return a NEW STRING

  Implicit Requirements
  - Empyt string returns empty string
-----------------------
Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

-----------------------
Data Structure: New string to push in characters
Algorithm:
- Define `repeater` method with param `str`
- Initialze `doubled_str` to empty string
- Iterate through string with each character method and push in the character
  multiplied by two into `doubled_str`
- Implicitly return `doubled_str`

-----------------------
Code:
=end