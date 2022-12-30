=begin
Question:
Letter Counter (Part 1)
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

-----------------------
Problem:
- Create method that takes in string of a word or words (sep by spaces)
- Returns a hash showing number of words of DIFFERENT sizes
- Words are a str of chars that don't include space

Input: String of a word or words
Output: Hash indicating size of words (via key) and count of each size of words (as value)
Rules:
  Explicit Requirements
    - Create method to capture string of word(s)
    - Return hash containing unique size of words (key) and count of how many words are that size (value)

  Implicit Requirements
    - Words can include non-alpha chars ("don't" = 5 characters)
    - Empty string = empty hash as return

-----------------------
Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

-----------------------
Data Structure:
Middle - Array
Output - Hash
-----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `word_sizes` with one parameter (str)
- Initialize `str_count` to empty hash
- Set array equal to split of `str` to create an array of strings
- Iterate over array to count string sizes
    - If hash key exists
      - Add one to the value
    - Else
      - Push into hash the size of string as the key
      - Value will equal 1

-----------------------
Code:
=end
