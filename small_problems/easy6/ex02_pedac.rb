=begin
Question:
Delete vowels
Write a method that takes an array of strings, and returns an array of the same
string values, except with the vowels (a, e, i, o, u) removed.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Array of strings
Output: Array of strings with vowels removed
Rules:
  Explicit Requirements
    - Method takes in array of strings
    - Method returns array of strings with vowels removed
      - Array contains same string values

  Implicit Requirements
    - Empty string remains part of array if all characters are vowels
-----------------------
Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

-----------------------
Data Structure: Array
Algorithm:
- Initialize constant `VOWELS` to upper and lowercase vowels
- Create method `remove_vowels` with param `arr`
  - Iterate through each `ele` (element) in `arr`
    - Print each `char` in `ele` if it is a vowel
    - Destructively delete `char` if it is a vowel (included in the VOWELS array
      constant)
- Implicitly returns array with transformed elements

-----------------------
Code:
=end
