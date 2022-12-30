=begin
Question:
Alphabetical Numbers
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array of integers
Middle: Hash for conversion
Output: Array of integers in alphabetical order
Rules:
  Explicit Requirements
  - Method takes in an array of integers between 0 and 19
  - Method returns array of input integers sorted by english words for each numbers

  Implicit Requirements

-----------------------
Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

-----------------------
Data Structure: Hash for conversion then Array output
Algorithm:
1. Create a constant `TO_NUMBER_CONVERSION` equal to a hash of key/value pairs:
    - Keys are going to be `zero` to `nineteen`
    - Values are going to be 0 to 19
2. Create a constant `TO_ALPHA_CONVERSION` equal to `TO_NUMBER_CONVERSION`
   inverted 
3. Create method `alphabetic_number_sort` with on param of `arr`
   a. Initialize `conversion` equal to iterating through `arr` and converting
      integers to english words using the `TO_ALPHA_CONVERSION` hash map, then
      sort the result
   b. Iterate through `conversion` to transform the array back to integers via
      the result of obtaining the return value of the key `word` in the
      `TO_NUMBER_CONVERSION` hash. The result is implicitly returned

-----------------------
Code:
=end
