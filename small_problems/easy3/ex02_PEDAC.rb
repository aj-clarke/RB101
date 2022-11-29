=begin
Question:

Arithmetic Integer

Write a program that prompts the user for two positive integers, and then prints
the results of the following operations on those two numbers: addition,
subtraction, product, quotient, remainder, and power. Do not worry about
validating the input.

----------------------
Problem:
Create a program that injests two integers. Display the result of the following
operations on the two numbers: addition,subtraction, product, quotient,
remainder, and power.
Do not worry about input validation.

Explicit Requirements:
- Prompt user for and injest two positive integers.
- Do not validate input.
- Perform multiple mathmatecal operations on the two integers:
  - addition, subtraction, product, quotient, remainder, and power.
- Display the results of each calcuation.

Implicit Requirements:

----------------------

Examples:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

----------------------

Data Structure: Array for Input Sequence and Hash for Calculations Key/Values
Input: Integers
Output: Results from Hash

----------------------

Algorithm:

**PSEUDO - Informal**
METHOD
- Create method that injests two integers and the operation and result hash
  - Perform each mathmatical operation on integers
  - Store result of each in hash, using the mathmatical array as pointer

MAIN
- Create array with mathmatical operation sequence - %w(+ - *..)
- Create hash with keys set to each mathmatical operation with a nested array
  as the value that includes a '' starting value for the results.
- Get input for integers and assign them to int1 and int2 (convert to integers)
- Invoke the mathmatecal_operations method and pass int1, int2, and the
  operations_and_results hash
- Create a counter based on hash size
- Display result of each calculation via a loop
  - Use integers and key/values for operator and result of calculation
  - Use counter as break condition

**PSEUDO - Formal**
START
DEF METHOD mathmatical_operations(int1, int2, results)
  results['+'][0] = int1 + int2
  results['-'][0] = int1 - int2
  results['*'][0] = int1 * int2
  results['/'][0] = int1 / int2
  results['%'][0] = int1 % int2
  results['**'][0] = int1 ** int2

END METHOD

SET oper_seq = %w(+ - * / % **)
SET oper_and_results = { '+' [''],
                         '-' [''],
                         '*' [''],
                         '/' [''],
                         '%' [''],
                         '**' ['']
                        }

DISPLAY "=> Enter the first number:"
SET int1 = gets.chomp.to_i
DISPLAY "=> Enter the second number:"
SET int2 = gets.chomp.to_i

CALL/INVOKE mathmatical_operations(int1, int2, oper_and_results)

SET counter = 0
SET max_counter = oper_and_results.size - 1
LOOP
  DISPLAY "=> #{int1} #{oper_and_results[oper_seq[counter]]} #{int2} " \
          "= #{oper_and_results[oper_seq[counter]]}"
  BREAK IF counter.eql?(max_counter)
END LOOP
END

----------------------

Code

=end
