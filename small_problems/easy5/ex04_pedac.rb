=begin
Question:
Letter Swap
Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the string
will always contain at least one word. You may also assume that each string
contains nothing but words and spaces.

-----------------------
Questions:
 - Is the return string a new string?
 - Leave single letter words as is?

Problem (Rewrite if needed else skip):

Write a method that takes a string of words (separated by spaces) and returns a
string that has the first and last letters of each word swapped.
Every word will contain at least one letter, and the string will always contain
at least one word. There will only be words and spaces in the string.

Input: String (A word or multiple words)
Output: A new string transformed as required

Rules:
  Explicit Requirements
    - Return string with first and last letter of each word swapped
    - Each input string will have at least one word
    - Each word will have at least one letter
    - There will only be words and spaces in string

  Implicit Requirements
    - String returned will not be the original input string
    - Spaces and single letter words are left as is

-----------------------
Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

-----------------------
Data Structure: Array of words to manipulate
Algorithm:
1. Create method `swap` with param of `str`
2. Initialize `str_arr` to result of splitting the string at each empty space
3. Iterate through `str_arr` and for each word that is at least 2 letters,
   set the word as equal to swapping the first and last letters via calling a
   `swap_letter` helper method
4. Create method `swap_letter` with param `word`
   a. Set `word_arr` equal to splitting the word into indiviual characters
   b. Utilize multiple-assignment to reassign first and last character indexes
     - Set `first` to Array#last index postion, and `last` to Array#first
5. Implicitly return array joined with a space between each word

-----------------------
Code:
=end