=begin
Question:

Squaring an Argument

Using the multiply method from the "Multiplying Two Numbers" problem, write a
method that computes the square of itsargument (the square is the result of
multiplying a number by itself).

----------------------
Problem:
Create a method that calculates the square of its argument.

Explicit Requirements:
- Create a method that ingests one argument
  - Square is the result of multiplying a number by itself
  - Use method from exercise 4 to perform the square calculation

Implicit Requirements:
- Return the result, do not display it
- No input validation

----------------------

Examples:
square(5) == 25
square(-8) == 64

----------------------

Data Structure: None
Input: Integers
Output: Return value from method, then return value from boolean comparison in
        main.

----------------------

Algorithm:

**PSEUDO - Informal**
METHOD:
- Create method `square` with one parameter `int`
  - Square the integer (multiply it by iteself) using the `multiply` method
    from exercise 4.

MAIN:
- Invoke method with the required argument and test case comparisons

**PSEUDO - Formal**
START
METHOD DEF multiply(int1, int2)
  int1 * int2
METHOD END

DEF METHOD square(int)
  multiply(int, int)
END METHOD

CALL p square(5) == 25
CALL p square(-8) == 64
END

----------------------

Code

=end
