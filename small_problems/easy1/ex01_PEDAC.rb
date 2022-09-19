=begin

Write a method that takes two arguments, a string and a positive integer, and
prints the string as many times as the integer indicates.
----------------------
Problem:

Given two arguments, a STRING and a POSITIVE INTEGER, print the string as many
times as the integer indicates.
- Assume integer will always be positive

Inputs:
  Two inputs:
    String
    Integer

Outputs:
  String (the number of times defined)

----------------------

Examples:

repeat('Hello', 3)
  => Hello
  => Hello
  => Hello

----------------------

Data Structure: None

----------------------

Algorithm:
**PSEUDO - Informal**
- Define method with two arguments (string, positive integer)
  - Create counter for provided integer
  - Create loop to contain print syntax
    - Subtract one from counter
    - Print string
    - Check if counter equals zero
      - If yes, break out of loop

**PSEUDO - Formal**
START

DEF repeat(str, int)
  SET counter = int

  LOOP
    counter -= 1
    PRINT str
    BREAK IF counter = 0
  END LOOP
END METHOD
END

----------------------

Code

=end
