=begin
Question:

Exclusive Or

The || operator returns a truthy value if either or both of its operands are
truthy. If both operands are falsey, it returns a falsey value. The && operator
returns a truthy value if both of its operands are truthy, and a falsey value if
either operand is falsey. This works great until you need only one of two
conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments,
and returns true if exactly one of its arguments is truthy, false otherwise.
Note that we are looking for a boolean result instead of a truthy/falsy value as
returned by || and &&.

----------------------
Problem:

Create a program that, via a method, takes in two arguments. If exactly one of
its arguments is truty, return true; otherwise, return false. The return value
should be a boolean result, not a truty/falsy value that is returned via || and
&&.

Explicit Requirements:
- Create method that takes in two arguments
- Only return a boolean true if one of the arguments is truty
  - Return a boolean false for any other condition
- Only return a boolean result, not a truty/falsy value

Implicit Requirements:
- Method willl use even? odd? methods to obtain truty/falsy value for each
  argument

----------------------

Examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

----------------------

Data Structure: N/A
Input: Integer w/method call
Output: Boolean true or false

----------------------

Algorithm:

**PSEUDO - Informal**
- Create method with two parameters (arg1, arg2)
  - Initialize variable `count` with integer 0
  - Use IF statement to evaluate
    - Set count += 1 if arg1 true
    - Set count += 1 if arg2 true
  - Use IF statment to evaluate `count`
    - If count.eql?(1)
      Return true
    - Else
      Return false


**PSEUDO - Formal**
START
DEF METHOD xor?(arg1, arg2)
  SET count = 0
  SET count += 1 IF arg1 true
  SET count += 1 IF arg2 true
  IF count.eql?(1)
    RETURN true
  ELSE
    RETURN false
  END IF
END METHOD
END

----------------------

Code

=end
