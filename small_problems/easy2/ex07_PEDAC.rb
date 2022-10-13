=begin
Question:

Print all odd numbers from 1 to 99, inclusive, to the console, with each number
on a separate line.

----------------------
Problem:

Display the odd integers from 1 to 99 (all inclusive) to the screen. Each number
should be printed on a separate line.

Explicit Requirements:
- Obtain all odd integers from the numbers 1 through 99
  - Includes 1 and 99
- Display each number to the screen
  - Each should be on its own line

Implicit Requirements:
- Only print to the screen, no return values (if a method)
- Discard any even numbers (do not process)

----------------------

Examples: 1 through 7 printing odd
1
3
5
7

----------------------

Data Structure: N/A
Input: N/A
Output: Integers displayed to the console

----------------------

Algorithm:

**PSEUDO - Informal**
1st way:
  - Use times method to count up to 99
    - Print integer if it is odd
2nd way:
  - Use upto method to count up to 99
    - Print integer if it is odd
3rd way: (rubocop yells to use each instead of for)
  - Use for loop for integers 1 through 99
    - Print integer if it is odd
4th way:
  - Use for each against integers 1 through 99
    - Print integer if it is odd

**PSEUDO - Formal**
START
- Call times method on integer 99 (starts at 0, would stop at 98 if set to 99)
  - Inside block
    - DISPLAY integer IF integer is odd? and not equal to 1
END

START
- Call upto method on integer 99
  - Inside block
    - DISPLAY integer IF integer is odd?
END

START
- Create FOR loop from 1 to 99 (inclusive: '..' not '...')
  - Inside loop
    - DISPLAY integer IF integer is odd?
END

START
- Call each method on integers 1 to 99 (inclusive: '..' not '...')
  - Inside block
    - DISPLAY integer IF integer is odd?
END

----------------------

Code

=end
