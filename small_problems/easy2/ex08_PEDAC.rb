=begin
Question:

Write a program that asks the user to enter an integer greater than 0, then asks
if the user wants to determine the sum or product of all numbers between 1 and
the entered integer.

----------------------
Problem:

Create a program that obtains a positive integer greater than 0 from a user.
Ask the user if they want the sum or product of all the numbers between 1 and
the provided integer.

Explicit Requirements:
- Obtain a positive integer from user
  - Must be greater than 0
- Ask user if they want the sum (addition) or product (multiplication) of all
  the numbers between the number 1 and the chosen number

Implicit Requirements:
- Validate the number is a positive integer greater than 0
- Validate the option chosen by the user
- Display the result to the user

----------------------

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

----------------------

Data Structure: N/A
Input: Integer
Output: Result of calulated integers

----------------------

Algorithm:

**PSEUDO - Informal**
- Ask for user to in put a positive integer
  - Initialize a variable as the result of the response converted to an integer
  - Validate integer is positive and greater than 0
- Ask if user wants the sum or product of the numbers between 1 and the chosen
  number
  - Initialize a variable as the result of the response
  - Validate the option chosen
- Calculate the result via each method
- Display the result to the user

**PSEUDO - Formal**
START
DEF METHOD valid_num?(num)
  num.to_s.to_i == num && num > 0
END METHOD

SET number = 0
LOOP
  DISIPLAY ">> Please enter a positive integer greater than 0:"
  SET number = gets.chomp.to_i
  CALL valid_num?(number)
    BREAK if valid
END LOOP

SET response = nil
SET end_program = false
LOOP
  DISPLAY ">> Enter 's' to compute the sum, 'p' to compute the product."
  SET response = gets.chomp
  IF response.to_s.downcase.eql?('s')
    SET sum = 0
    CALL each METHOD on (1..number):
    (1..number).each { |num| SET sum += num }
    DISPLAY "The sum of the integers between 1 and #number is #sum."
    SET end_program = true
    END
  ELSIF response.to_s.downcase.eql?('p.)
    SET product = 1
    CALL each METHOD on (1..number):
    (1..number).each { |num| SET product *= num }
    DISPLAY "The product of the integers between 1 and #number is #product."
    SET end_program = true
  ELSE
    DISPLAY "Invalid selection. Please try again."
    SET end_program = false
  END IF
END LOOP
END

----------------------

Code

=end
