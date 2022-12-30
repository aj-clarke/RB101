=begin
Question:
Cute angles
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Note: your results may differ slightly depending on how you round values, but
should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes
and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:
DEGREE = "\xC2\xB0"
-----------------------
Questions:
  1. What calculation is needed for degrees to degrees/minutes/seconds conversion

Problem (Rewrite if needed else skip):
  Create a method that converts a floating point number (an angle between 0 and
  360 degrees) and returns a string representing that angle in degrees, minutes,
  and seconds. Use degree symbol (°) to represent degrees, a single quote (')
  for minutes, and a double quote (") for seconds.
  
  Degrees have 60 minutes, minutes have 60 seconds.

  Results may differ slightly depending on rounded values; however, should be
  within a second or two of results shown.

  Use 2 digit formatting for minutes and seconds. Ex: 321°03'07"
  
  You may use this constant to represent the degree symbol:
  DEGREE = "\xC2\xB0"

Input: Integer (representing a floating point angle)
Output: String representing angle in degrees/minutes/seconds
Rules:
  Explicit Requirements
    - Method takes in floating point number representing angle between 0 and 360
    - Method returns string representing angle in degrees/minutes/seconds
    - (°) represents degrees, constant for symbol (DEGREE = "\xC2\xB0")
    - (') represents minutes
    - (") represents seconds
    - Degrees have 60 minutes, minutes have 60 seconds
    - Use 2 digit formatting for minutes and seconds

  Implicit Requirements
    - 360 degrees can equal 360°00'00" or 0°00'00"

-----------------------
Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

-----------------------
Data Structure: Hash to store degrees, minutes, and seconds conversion values?
Algorithm:
METHOD:
- Create method `dms` with param `angle`
- Initialize `conversion` to a hash containing key/value pairs:
    - degrees: 0, minutes: 0, seconds: 0
# - Initialize `calculations` equal to the integer 0
- Initialize `degrees` equal to `float` converted to an integer
- Initialize `temp_minutes` equal to the result of `float` minus `:degrees`
- Set `:minutes` equal to `temp_minutes` times 60 converted to an integer
- Initialize `temp_seconds` equal to the result of `temp_minutes` times 60
- Set `:seconds` equal to the result of `temp_seconds` times 60 converted to an integer
- Format each key/value pair and save to new variables 

- Return conversion

MAIN:
- Initialize constant DEGREE = "\xC2\xB0"


-----------------------
Code:
=end
