=begin
Question:
Palindromic Substrings
Write a method that returns a list of all substrings of a string that are
palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be arranged in
the same sequence as the substrings appear in the string. Duplicate palindromes
should be included multiple times.

You may (and should) use the substrings method you wrote in the previous
exercise.

For the purposes of this exercise, you should consider all characters and pay
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
  "Abc-bA" are. In addition, assume that single characters are not palindromes.

-----------------------
Questions:
- What is a palindrome
Problem (Rewrite if needed else skip):

Input: Array of substrings
Output: Array of palindromic substrings
Rules:
  Explicit Requirements
  - Returned array must consist only of palindromic substring elements
  - Returned array must have palindromic elements in the same sequence as the
    substrings in the original string
  - Allow duplicate palindromes
  - Palindromes are case SENSITIVE for this method
  - Do not include single characters, assume they are not palindromes

  Implicit Requirements

-----------------------
Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

-----------------------
Data Structure: String input will be converted to array of palindromes for output
Algorithm:
**PSEUDO - Informal**
- Define `palindromes` method with param `str`
- Initialize `palindrome_sub_strings` to empty array
- Initialize `sub_strings` to return value of calling `substrings` on `str`
- Iterate through `sub_strings` (each) to return only palindromic substrings
  greater than 1 character
  - Move to next iteration if `string` is 1 character in lenght
  - Push `string` into `palindrome_sub_strings` if `string` is equal to `string`
    when it is reversed
  - Implicitly return `palindrome_sub_strings`
-----------------------
Code:
=end