=begin
Question:
Leading Substrings
Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in
order from shortest to longest substring.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String literal
Output: Array of substrings from string literal as required
Rules:
  Explicit Requirements
  - Method returns a collection of substrings in an array
    - List of substrings always starts at index 0 of original string
  - Arrange order in array from smallest to longest length substring

  Implicit Requirements
  - Assuming string will always be at least one character

-----------------------
Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

-----------------------
Data Structure:
Algorithm:
- Define `leading_substrings` with param of `str`
- Initialize `result` to an empty array
- Use a range approach to capture/push 'str' elements into `result` array
  # - Iterate through inner loop to build each substring to push into `result`
  #   elements
    - Build each substring from index position 0 to `to_index` by slicing `str`
    - Push into `result` array
- Implicitly return `result`

-----------------------
Code:
=end