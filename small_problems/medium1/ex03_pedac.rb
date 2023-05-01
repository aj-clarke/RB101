=begin
Question:
Rotation (Part 3)
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

-----------------------
Rules:
  Explicit Requirements
  - Take an integer argument and return its maximum rotation
    - 531 > 315 > 351
    - Above shows you rotate each digit to the end starting from left to right. Once a digit is moved to the end, that index (and those prior to the left) are locked into place. Keep moving right throughout this process until the last two index positions are rotated
  - If a leading 0 is present after rotation is complete, remove the zero.
    - There will only be 1 zero that could meet this need
  
  Implicit Requirements

I: Integer
O: Modified intger


-----------------------
Examples:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

-----------------------
Modeling:
105 == 15

105 > 051 > 015 > 15 (strip leading zero)

`arr` = Change to a string, then to an array of characters

['1', '0', '5']

Iterate through `arr` |num|
  push `arr.shift` into `arr`
end iteration

if first index of `arr` is '0', use shift on array to remove it

return `arr` joined and converted to an integer

-----------------------
Data Structure:
I: Integer
W: Array of integers converted to string characters, then manipulated as required and converted back to a new integer
O: New Integer based on maximum rotation of the input integer

Algorithm:
< given an integer `int` >

Initialize `arr` to the result of convtertin `int` to a string, then to an array of characters
Initialize new_arr to an empty collection

Initialize `new_arr` to the below
  - Iterate through `arr` with index |num|
      Push into `arr` the return value of removing the current element by index from the Array

Join `arr` and convert to an integer

-----------------------
Code:
=end

def max_rotation(int)
  arr = int.to_s.chars
  arr = arr.each_with_index do |num, idx|
    arr << (arr.delete_at(idx))
  end

  arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
