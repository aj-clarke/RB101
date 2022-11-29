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
- Obtain the two integers from a user for the method
- Method will ingest two INTEGERS
- Method will not display anything to the screen, only return the result
- Validation not requested, but validating input

----------------------

Examples:
multiply(5, 3) == 15      # => true
multiply(10, 10) == 100   # => true
multiply(4, 2) == 99      # => false

----------------------

Data Structure: Array
Input: Integers
Output: None, return values only

----------------------

Algorithm:

**PSEUDO - Informal**
METHOD:
- Create method called `multiply` that has one parameter: multiply_arr
  - Use reduce or inject method to multiply the two elements in the array
  - Return the result
- Create method `valid_integer?` that has one parameter, int, to validate input
  is an integer
  - Use to integer to string methods to validate
MAIN:
- Create an empty `arr_to_multiply`
- Create Loop while `arr_to_multiply` size is less than 2
  - Display to the user to provide the integers
  - Set the integers as `int_input`
  - Create inner loop for integer validation
    - Invoke `valid_integer?` with the argument `int_input` to validate it is a
      valid integer
    - Break if valid
  - Push the integers into the empty array
- Invoke the `multiply` method with the argument `arr_to_multiply` to obtain the
  return value

**PSEUDO - Formal**
START
METHOD:
METHOD DEF multiply(mutiply_arr)
  multiply_arr.inject(:*)
METHOD END
METHOD DEF valid_integer?(int)
  int.to_i.to_s == int
METHOD END

MAIN:
SET arr_to_multiply = []
WHILE arr_to_multiply.size < 2
  SET int_input = ""
    LOOP
      DISPLAY `Enter a valid integer`
      SET int_input = gets.chomp
      BREAK IF CALL valid_integer?(int_input)
      DISPLAY `Invalid Integer, please try again`
    END LOOP
  PUSH int_input.to_i into arr_to_multiply
END WHILE
CALL multiply(arr_to_multiply)
END


----------------------

Code

=end
