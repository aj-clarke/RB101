=begin
Question:

Create a simple tip calculator. The program should prompt for a bill amount and
a tip percentage. The program must compute the tip and then display both the tip
and the total amount of the bill.

----------------------
Problem:

Create a program that can compute a tip based off of the bill amount and a given
tip percentage. Display the tip and total amount of bill after calculating.

Explicit Requirements:
- Get bill and tip percentage from user
- Calculate tip amount via bill amount and tip percent
- Display tip amount and total bill cost after calcluations

Implicit Requirements:
- Must be a positive integer/float from user
- Validate numbers greater than 0 or no calculation


----------------------

Examples:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

----------------------

Data Structure: N/A
Input: Floats
Output: Floats

----------------------

Algorithm:
**PSEUDO - Informal**
- Create a method `calc_tip_and_bill` with two parameters; tip_input and
  sub_total
  - Calculate tip
    - Convert tip input to percentage with CONSTANT (EX: From 5 to 0.05)
    - Obtain tip amount via sub total * tip percentage
  - Calculate bill total
    - Add sub total and tip amount for bill total
  - Return tip amount and bill total

- Create a method `diplay_full_bill` with two parameters; tip_amount and
  bill_total
  - Display tip total
  - Display bill total

- Create a method `valid_number?` with one parameter; num
  - Validate via conversion method
    - Float to string equal to string to float
    and
    - num is greater than 0

- Create a CONSTANT of 0.01 to convert tip to percentage
- Create yes_response and no_response arrays
- Clear screen
- Display a welcome message
- Start a loop
  - Start inner loop for each input
    - Ask for percentage and bill amounts
      - Set as tip_input and sub_total
      - Break if number valid, otherwise loop again
  - Inner loop stops

  - Set tip_total and bill_total equal to invoking `calc_tip_and_bill` method
    with tip_input and sub_total passed as arguments
  - Invoke `display_full_bill` method with tip_total and bill_total

  - Ask "Calculate another tip? (y or n)"
    - Start again with y, end program with n
- End loop
- Display "Thanks for using the Tip Calculator"

**PSEUDO - Formal**
START
DEF METHOD calc_tip(tip_input, sub_total)
  SET tip_percent = tip_input * CONSTANT
  SET tip_amount = tip_percent * sub_total
  tip_amount
END METHOD

DEF METHOD calc_bill(tip_amount, sub_total)
  tip_amount + sub_total
END METHOD

DEF METHOD display_full_bill(tip_amount, bill_total)
  PRINT "The tip is $#tip_amount"
  PRINT "The total is $#bill_total"
END METHOD

DEF METHOD valid_number?(num)
  num.to_s.to_f == num
END METHOD

MAIN
SET CONSTANT `TO_PERCENT` = 0.01
SET yes_response = [y, yes]
SET no_response = [n, no]
CLEAR SCREEN via system 'clear'
PRINT "Welcome to the Tip Calculator"
BEGIN LOOP
  SET sub_total equal to nil
  BEGIN LOOP
    PRINT "Please enter the bill amount:"
    SET sub_total = gets.chomp.to_f
    BREAK if valid_number?(sub_total)
  END LOOP

  SET tip_input equal to nil
  BEGIN LOOP
    PRINT "Please enter the tip percentage:"
    SET tip_input = gets.chomp.to_f
    BREAK if valid_number?(tip_input)
  END LOOP

  SET tip_amount = calc_tip(tip_input, sub_total)
  SET bill_total = calc_bill(tip_amount, sub_total)
  SET tip_amount = format to two decimal ponits
  SET bill_total = format to two decimal points
  CALL display_full_bill(tip_amount, bill_total)

  PRINT "Calculate another tip? (y for yes, n for no)"
  SET new_calculation = ''
  BEGIN LOOP
     SET new_calculation = gets.chomp.downcase
    IF yes_response.include?(new_calculation)
      new_calculation = true
      BREAK loop
    ELSIF no_response.include?(new_calculation)
      new_calculation = false
      BREAK loop
    ELSE
      PRINT "Invalid reponse, plase try again"
    END
  END LOOP

  BREAK unless new_calculation
END LOOP

PRINT "Thanks for using the Tip Calculator!"
END

----------------------

Code

=end
