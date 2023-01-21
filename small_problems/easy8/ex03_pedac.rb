=begin
Question:
Write a method that returns a list of all substrings of a string. The returned
list should be ordered by where in the string the substring begins. This means
that all substrings that start at position 0 should come first, then all
substrings that start at position 1, and so on. Since multiple substrings will
occur at each position, the substrings at a given position should be returned
in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous
exercise:

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String literal
Output: Array of substrings from string literal sorted as required
Rules:
  Explicit Requirements
  - Method returns a collection of substrings in an array
    - List of substrings must be sorted properly
      - In order of where the substring begins
      - Then from shortest to longest for each set of substrings from where that
        given set of substrings index position begins (refer to example for
        clarification/understanding)
  - Expected to use the `leading_substrings` method from previous exercise

  Implicit Requirements

-----------------------
Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd', 'bcde', 'c', 'cd', 'cde',
  'd', 'de', 'e'
]
Same as above, but formatted differently to see sorting:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
-----------------------
Data Structure: Array to capture substrings
Algorithm:
- Define method `substrings` with param of `str`
- Initialize `result` to empty array
- Initialize `index_start` to 0
- Start a loop to cycle through and build each set of substrings from `str`
  - Break out of loop when `index_start` is equal to `str.size`
  - Push into `result` the return value of calling `leading_substrings`,
    passing in the string from position `index_start` to the size of `str`.
  - Add 1 to `index_start` for the next loop/pass
- Implicitly return `result` flattened

-----------------------
Code:
=end