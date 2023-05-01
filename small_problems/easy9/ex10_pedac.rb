=begin
Question:
Sum of Digits

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

sum(23) == 5
sum(496) == 19
sum(123_456_789) == 45

The tests above should print true.
For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Positive Integer
Output: Value of adding each digit of the input integer together
Rules:
  Explicit Requirements
  - Add individual integer digits to obtain sum of all digitis
  - Return the sum
  - For challenge do not use basic looping constructs
      - while, until, loop, and each

  Implicit Requirements
  - Ignore '_' from input integer

-----------------------
Modeling:
sum(23) == 5
break up integer 

-----------------------
Examples:
sum(23) == 5  # 2 + 3 = 5
sum(496) == 19  # 4 + 9 + 6 = 19
sum(123_456_789) == 45  # 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45


-----------------------
Scratch Pad:
  digits method?
  sum array or reduce/inject

-----------------------
Data Structure: Integer > Array > Summing array > Return Integer
Algorithm:
- Define `sum` with param of `int`
- Convert `int` to an array of digits
- Sum the array, implicitly return


-----------------------
Code:
=end