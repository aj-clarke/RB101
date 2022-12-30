=begin
Question:
ddaaiillyy ddoouubbllee
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze or
String#squeeze!.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String
Output: New string with consecutive duplicates removed
Rules:
  Explicit Requirements
    - Method takes a string argument
    - Method ALWAYS returns a NEW STRING
      - Contains value of original string with all consecutive duplicate
        characters collapsed (ie: aaedd => aed)
    - May not use String#squeeze or String#squeeze!

  Implicit Requirements
    - Not worried about spaces
    - Empty string returns new empty string
    
-----------------------
Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == '' # maybe return a String.new?

-----------------------
Data Structure: Array to iterate through words
Algorithm:
1. Create method `crunch` with one param `str`
  # a. Explicitly return new empty string if `str` is empty
  # b. Explicitly return duplicate of string if `str` size is 1
  c. Initialize `result` to an empty array
  d. Initialize `placeholder` to an empty array
  e. Initialize `arr` to `str` split into array
  f. Iterate through `arr` array for each `word`
    1. Initialize `current_letter` an empty string
    2. Iterate through `word` for each `char`
      a. If `char` is equal to `current_letter` next
      b. Else push `char` into `placeholder` array, and set `current_letter` to
        `char`
    3. Join the `placeholder` array and push it into the `result` array
    4. Reassign `placeholder` to an empty array for the next iteration
  g. Implicitly return `result`
-----------------------
Code:
=end
