=begin
Question:
Staggered Caps (Part 1)
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which
every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.

-----------------------
Questions:

Problem (Rewrite if needed else skip):
- Method takes in string
  - Returns a NEW string
- Return string contains staggered capitalization representation of original str
- Non letter characters should not be changed
  - They DO COUNT when determining upper and lowercase character switching
Input: String
Output: New string with string characters mutated as required
Rules:
  Explicit Requirements
  - Method returns NEW STRING
  - New string will contain staggered capitalization scheme
    - Every other character is capitalized, and remaining are lowercase
  - Non-letter characters are not changed, BUT they still count when executing
    the capitalization scheme

  Implicit Requirements
  - The first letter in the string will start as uppercase
-----------------------
Examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

-----------------------
Data Structure: Characters manipulated in array and joined back together
Algorithm:
- Create method `staggered_case` with param `string`
- Convert `string` into array of characters
  - Iterate through the array with the index position
    - If the index position is even, and the character is a letter; upcase it
    - Else if the index position is odd, and the character is a letter; downcase
      it
    - Else move onto the next
  - Join the `string` back together and implicitly return

Brain dump thoughts: Even elements are uppercase, odd are lowercase, ignore non
  alpha, maybe use regex /[a-zA-Z]/ to test characters, if true, ignore but keep
  moving

-----------------------
Code:
=end
