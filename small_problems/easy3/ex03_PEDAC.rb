=begin
Question:

Counting the Number of Characters

Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a
character.

----------------------
Problem:
Create a program that obtains a word or multiple words from a user. Then tell
the user how may characters are in the input. Spaces do not count as a
character.

Explicit Requirements:
- Obtain input (word or words) from user
- Display the number of characters in the provided input
- Spaces are not included in the number of characters

Implicit Requirements:
- Characters not limited to letters, can be numbers, symbols, etc.

----------------------

Examples:
input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

input:

Please write word or multiple words: walk, don't run

output:

There are 13 characters in "walk, don't run".

----------------------

Data Structure: N/A
Input: String of word(s)
Output: String w/interpolation

----------------------

Algorithm:

**PSEUDO - Informal**
- Display 'Please input a word or multiple words: '
  - Get word or words input from user
  - Assign input to variable `char_input`
- Set `char_input_no_spaces` as a copy of `char_input` to remove spaces.
- Assign `num_of_char` equal to `char_input_no_spaces` when stripped of spaces.
- Display "There are `char_count` characters in \"#char_input\"."

**PSEUDO - Formal**
START
DISPLAY 'Please input a word or multiple words:'
SET char_input = gets.chomp
SET char_input_no_spaces = char_input.dup
SET char_input_no_spaces.slice!(" ")
SET num_of_char = char_input_no_spaces.size
DISPLAY "There are #{char_count.size} characters in \"#{char_input}\"."
END

----------------------

Code

=end
