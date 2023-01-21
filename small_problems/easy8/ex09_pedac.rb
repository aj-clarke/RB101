=begin
Question:
Reverse It (Part 2)
Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters
reversed. Each string will consist of only letters and spaces. Spaces should be
included only when more than one word is present.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String literal
Output: Transformed string literal
Rules:
  Explicit Requirements
  - Method takes in 1 argument, a string with one or more words
  - Return a new string
  - Words that contain 5 or more characters should be reversed ('hello' => 'olleh')
  - Spaces only included when more than one word is in original string

  Implicit Requirements
  - Letters 'case' will not be modified, only character positions are transformed
    when required
  - Based on examples, not worried about empty strings

-----------------------
Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

-----------------------
Data Structure: String to array for transformation of elements, then converted
                back to a string
Algorithm:
- Define 'reverse_words' with param `str`
- Split the string to divide `str` into substrings in an array, with an empty
  space as the delimiter
  - Iterate through the returned array via `Array#map` to transform each of the
    arrays string objects
    - Use conditional to reverse the current element if its size is greater than 5
      to return the transformed element back to the block
    - Else just return the current word to the block
  - After iteration is complete, join the newly created array with a blank space
    as the seperator.
-----------------------
Code:
=end