=begin
Question:
Bannerizer
Write a method that will take a short line of text, and print it within a box.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String
Output: Multi-line string input string inside of the "frame" 
Rules:
  Explicit Requirements
    - Method takes a short line of text as input
    - Method outputs to screen text within a box

  Implicit Requirements
    - Rows are a static structure unless a string is not empty
    - "-" signs on top and bottom rows become dynamic based on count of chars
      in the input string (IE: a 2 character input will add two "--" at the top
      and bottom rows of the box)
      - Additionally, " "'s (spaces) are dynamic in the same fashion on the
        second and fourth rows

-----------------------
Examples:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

-----------------------
Data Structure: None for now
Algorithm:
1. Create method `print_in_box` with one param `text`
  a. Initialize `left_corner` equal to "+-"
  b. Initialize `right_corner` equal to "-+"
  c. Display `left_corner` + (text.size * " ") + `right_corner`

-----------------------
Code:
=end
