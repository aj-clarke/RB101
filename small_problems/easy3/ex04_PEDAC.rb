=begin
Question:

Multiplying Two Numbers

Create a method that takes two arguments, multiplies them together, and returns
the result.


----------------------
Problem:
Create a method that ingests two integer arguments, multiplies them, then
returns the result.

Explicit Requirements:
- Create method that takes two arguments
  - Method will multiply the two arguments together
  - Result will be returned (not displayed)

Implicit Requirements:
- Method will ingest two INTEGERS
- Method will not display anything to the screen, only return the result
- Validation not required
- Integers provided in-line (in-code) not input by the user

----------------------

Examples:
multiply(5, 3) == 15      # => true
multiply(10, 10) == 100   # => true
multiply(4, 2) == 99      # => false

----------------------

Data Structure: N/A
Input: Integers
Output: Return value from method, and boolean from test cases

----------------------

Algorithm:

**PSEUDO - Informal**
METHOD:
- Create method called `multiply` that has two parameters: int1, int2
  - Multiply the two integers
  - Return the result
MAIN:
- Invoke the `multiply` method with the arguments passed in to obtain the return
  value

**PSEUDO - Formal**
START
METHOD:
METHOD DEF multiply(int1, int2)
  int1 * int2
METHOD END

MAIN:

CALL multiply(5, 3) == 15      # => true
CALL multiply(10, 10) == 100   # => true
CALL multiply(4, 2) == 99      # => false
END


----------------------

Code

=end
