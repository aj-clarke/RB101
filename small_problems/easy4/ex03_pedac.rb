=begin
Question:

Leap Years (Part 1)

In the modern era under the Gregorian Calendar, leap years occur in every year
that is evenly divisible by 4, unless theyear is also divisible by 100. If the
year is evenly divisible by 100, then it is not a leap year unless the year is
evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that
takes any year greater than 0 as input, and returns true if the year is a leap
year, or false if it is not a leap year.

----------------------
Problem:
- Leap years occur every year that is evenly divisible by 4
  - Unless the year is also divisible by 100
- If year is evenly divisible by 100, then it is not a leap year
  - Unless it is evenly divisible by 400
- Assume this rule is good for any year greater than 100
- Write a method that takes any year greater than 0 as input and returns true if
  it is a leap year, and false if not.

Input: Integer
Output: Return boolean true/false
Rules:
  Explicit Requirements:
    - Create method that takes in one parameter (year greater than 0)
    - Calculate based on provided leap year information whether leap year or not
    - Validate if year is evenly divisible by 4 (no remainder)
      - If so it is a leap year
        - Unless it is also evenly divisible by 100
          - 100 rule is overridden if also evenly divisible by 400 (ie: 400 is a
            leap year even though it is divisible by 100)

  Implicit Requirements:
    - Validate year is greater than 0 (since we assume it is good for > 0 years)

----------------------
Examples:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

----------------------
Data Structure: None

----------------------
Algorithm:
**PSEUDO - Informal**
- Create method `leap_year?` with `year` parameter
- If `year` divisible by 400 (modlulo 400 = 0), return true
- Else if year divisible by 4 and not by 100, return true
- Else implicit false return

**PSEUDO - Formal**
START

END

----------------------
Code
=end
