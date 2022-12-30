=begin
Question:
Letter Counter (Part 2)
Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String
Output: Hash of word sizes (key), and how many words are that size (value)
Rules:
  Explicit Requirements
    - Exclued non-letters when determining word size.
      - Ex: it's is 3 characters, not 4

  Implicit Requirements
    - Empty string returns empty hash
-----------------------
Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

-----------------------
Data Structure: Hash
Algorithm:
1. Create a constant `ALPHABET` with all letters of alphabet
2. Create method `word_sizes` with one param of `string`
  a. Return empty array if `string` is empty
  b. Initialize `word` array object equal to downcased and split string
  c. Initialize `transform` to each `word` mapped to a new array
    1. Reassign `word` to splitting the word into an individual character array,
       then selecting only the characters that are included in the `ALPHABET`
       constant.into an array
    2. Join the `word` array
  d. Implicitly return Invoke `word_size_count` passing in `transform` array

3. Create helper method `word_size_count` with one params `arr`
  a. Initialize `hash` to an empty hash
  b. Initialize `word_sizes` to empty array
  c. Iterate through `arr` array, and push into `word_sizes` array the size of
     each word
  d. Initialize `temp_sizes` to a duplicate of `word_sizes` with the non
     destructive #uniq method to obtain unique values for hash keys
  e. Iterate through `temp_sizes` hash adding each size to the hash array with
     the value being a result of the count of that uniqe size in the original
     `word_sizes` array
  d. Implicitly return the hash

-----------------------
Code:
=end
