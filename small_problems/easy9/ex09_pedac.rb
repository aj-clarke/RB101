=begin
Question:

Group Anagrams
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams. Anagrams are
words that have the same exact letters in them but in a different order. Your
output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: An array with string objects as elements
Output: Array(s) containing groups of anagrams from the input array
Rules:
  Explicit Requirements
  - Create and print out groups of anagrams from original input array

  Implicit Requirements
  - Mulitple arrays are created if more than one group of anagrams exists

-----------------------
Modelling:


-----------------------
Examples:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

          result { 'demo' => ['demo'] }

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

-----------------------
Scratch Pad:


-----------------------
Data Structure: - Working with an array during input
                - Hash to hold results for each group of anagrams
                - Separate arrays for output
Algorithm:
- Define `find_and_display_anagrams` with param of `arr`
- Initialize `result` to an empty hash
- Iterate through input array `words`
  - Split the current `word` into an array of chars to sort
  - Add the first word sorted to the empty hash as a key, and itself non-sorted
    as a value.
  - For each subsequent element, if it matches the first (or any current) key
    when sorted, add the non-sorted string element as a value of the respecive
    key.
  - If it does not match any current key, add the string element (sorted) as a
    new key, with its unsorted self as a value.
-----------------------
Code:
=end
