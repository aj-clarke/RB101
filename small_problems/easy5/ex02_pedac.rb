=begin
Question:
After Midnight (Part 1)
The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight. If
the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the
time of day in 24 hour format (hh:mm). Your method should work with any integer
input.

You may not use ruby's Date and Time classes.

Disregard Daylight Savings and Standard Time and other complications.

-----------------------
Questions:

Problem (Rewrite if needed else skip):

Input: Integer (positive or negative)
Output: Time represented in 24 hour format (hh:mm)
Rules:
  Explicit Requirements
  - Create method to represent time using a minute-based format
  - Time can be represented as minutes before or after midnight
    - If number is positive, time is after midnight
    - If number is negative, time is before midnight
  - Return will represent time of day in 24 hour format (hh:mm)
  - Method should work with any intiger input
  - Cannot use Ruby's Date and Time classes
  - Disregard DST and ST and any other time complications

  Implicit Requirements
  - Return should be displayed in string format

-----------------------
Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

-----------------------
Data Structure / Algorithm: Hash to manage hours and minutes
**PSEUDO - Informal**
1. Create method `time_of_day` with one parameter of `int`
2. Initialize `time_hash` hash equal to 00 hours and 00 minutes
3. Initialize `time_arr` to an empty array
4. If `int` equals 0, return "00:00" DONE YAY!... j/k
5. Use ternary to decide which calculation helper method to call:
   (positive or negative)
6. If `int` is greather than 0, call `calc_pos_time` with `int` and `time_hash`
   If not, call `calc_neg_time` with `int` and `time_hash`
7. Push `:hours` and `:minutes` values, after converting to a string, into
   `time_arr` as index 0 and 1, respectively.
8. If either the `:hours` or `:minutes` values are less than 10, prepend a
   "0" to their respective `time_arr` index(es)
9. Return a joined `time_arr` with the separator ":"

Problem: Create two helper methods `calc_pos_time` and `calc_neg_time`
HELPER: calc_postive_time
1. Create method `calc_pos_time` with parameters `int` and `time_hash`
2. Start a loop to increment time
    - If size of integer is >= 60, increment `:hours` key value by 1 and
      subtract 60 from `int`.
      - If `:hours` key has a value of 24, set it to 0
    - Else add `int` value to `:minutes` value, and subtract `int` from itself
      (should equal 0)
    - break by validating `int` is equal to 0
    - Return the modified hash

HELPER: calc_neg_time
1. Create method `calc_neg_time` with parameters `int` and `time_hash`
2. Set `time_hash` `:hours` to 23
3. Start a loop to increment time
    - If size of `int` >= -60
      - Set `:minutes` to 60 - absolute value of `int`

    - Else subtract 1 from `hours:` key value
      - If `:hours` key has value of -1, set it to 23
    - Set `int` to int + 60
    - break by validating `int` is equal to 0
4. Return the modified hash

-----------------------
Code:
=end
