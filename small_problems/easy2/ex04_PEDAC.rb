=begin
Question:

Build a program that displays when the user will retire and how many years he or
she has to work till retirement.

----------------------
Problem:

Create a program that calculates how many years a user has to retire. The user
will provide their current age, and what age they would like to retire. Then
the program will perform the calculation and display the results.

Explicit Requirements:
- Must obtain users current age
- Must ask when they would like to retire (what age)
- Calculate how many years it is from current age until retirement age
- Display when the user will retire (year), and how many years they have to work
  until then.

Implicit Requirements:
- Obtain current year to perform retirement calculations against
- Validation of inputs as non-negative or non-0 not stated as a requirment

----------------------

Examples:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

----------------------

Data Structure: N/A
Input(s): Integers for age and age to retire
Output: String w/Integer concatenation

----------------------

Algorithm:

**PSEUDO - Informal**
- Get and store current year via Date module, and store to `current_year`
  variable
- Ask for users age and store it to an `age` variable
- Ask for age when user would like to retire, store to `retirement_age`
- Calculate how many years until retiring:
  - Subtract `age` from `retirement_age` and store it to a
    `years_until_retirement` variable
- Calculate year of retiring:
  - Add `years_until_retiring` to `current_year`
  - Store it to `retirement_year`
- Display information about current year, retirement year, and how many years
  left to go.


**PSEUDO - Formal**
START
MODULE require 'date'
SET current_year = Date.today.cwyear
DISPLAY "What is your current age?"
SET age = gets.chomp.to_i
DISPLAY "At what age would you like to retire?"
SET retirement_age = gets.chomp.to_i

SET years_until_retirement = retirement_age - age
SET retirement_year = years_until_retirement + current_year

DISPLAY "It is #{current_year}. You will retire in #{retirement_year}."
DISPLAY "You only have #{years_until_retirement} years of work to go!"

END

----------------------

Code

=end
