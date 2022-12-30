=begin
Question:
After Midnight (Part 2)
As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative, the
time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the
number of minutes before and after midnight, respectively. Both methods should
return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: String representing time of day in 24hour format
Output: Integer representing the number of minutes before or after midnight
Rules:
  Explicit Requirements
    - Create two methods that take tiem of day in 24 hour format
      - One calculates number of minutes after midnight
      - Other calculates number of minutes before midnight
    - Methods should return a value in the range of 0..1439
    - 24:00 is not a valid time, but asked to keep it as use case for
      interesting use case.

  Implicit Requirements
    - Both methods should be called with the same input
    - 24:00 is equal to 00:00 so should be treated as 0, not 1440 minutes

-----------------------
Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

-----------------------
Data Structure:
- String input
- Possibly Array for conversion step
- Integer output

Algorithm:
- Initialize constant `MINUTES_PER_HOUR` to 60
- Initialize constant `HOURS_PER_DAY` to 24
- Initialize constant `MINUTES_PER_DAY` to `MINUTES_PER_HOUR` * `HOURS_PER_DAY`
1. Create both methods
  a. `after_midnight` with the param `time`
    1. Call helper method to get `time` returned in two element array as ints
    2. Calculuate hours to minutes with index 0 times `MINUTES_PER_HOUR`
       constant
    3. Explicitly return the result of calculating the sum of the `time` array
       elements to get total number of minutes UNLESS the sum is equal to the
       `MINUTES_PER_DAY` constant. (1440 would mean midnight so would need to be
       a 0 integer returned)
    4. Explicitly return the integer 0 if the sum of the `time` array is equal
       to the `MINUTES_PER_DAY` constant.

       -----REFACTORED BELOW-----
  # b. `before_midnight` with the param `time`
  #   1. Call helper method to get `time` returned in two element array as ints
  #   2. Unless `time` index 0 (hours) is equal to 0, calculate hours minus
  #      `HORUS_PER_DAY` + 1 (to offset calculating the time in reverse from
  #       the 'future' midnight), multplied by `MINUTES_PER_HOUR`, then converted
  #       to absolute value.
  #   3. `time` index position 1 (minutes) would be reassigned minutes minus 60
  #      converted to absolute value to calculate remaining minutes in the hour.

2. Create helper method `time_to_int_arr` with one param `time`
  1. Convert the time to two element array
    - index 0 represents hours
    - index 1 represents minutes
  2. Transform elements to integers and implicitly return


       -----before_midnight updated algorithm-----
1. Initialize `result` to the result of subtracting the `after_midnight` return
   value from the `MINUTES_PER_DAY` constant value
2. Explicitly return the integer 0 if `result` is 1440 minutes
3. Implicitly return `result` otherwise

-----------------------
Code:
=end
