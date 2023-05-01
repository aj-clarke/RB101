=begin
Question:
Rotation (Part 2)
Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

-----------------------
Rules:
  Explicit Requirements
  - Method will rotate the last `n` digits of a number
  - Rotating 1 digit (the last) results in the same number because it cannot move any farther right
  - `n` will always be positive

  Implicit Requirements

I: Integer
O: Modified integer (unless passed in `1` as `n`)


-----------------------
Examples:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

-----------------------
Modeling:
(735291, 3) == 735912

convert integer to an array `arr` via `digits` reversed [7, 3, 5, 2, 9, 1]

create `temp` Array
create a `counter` equal to 0

start a loop
  push result of popping arr into temp
  increase counter by 1
  break if counter == input integer
end loop

set result to calling rotate_array method with `temp` passed in

push `result` into `arr`

Convert back to integer (join then to intger)

-----------------------
Data Structure:
I: Two integers: Int to modify and int representing how many digits to modify 
W: Array to modify digits
O: Digits

Algorithm:
< given an integer `int` >

Convert the input integer to an array `arr` of digits, reverse it

Initialize a `temp` array to an empty collection
Initialize a `counter` to 0

Start a loop
  push result of popping arr into temp
  increase counter by 1
  break out of loop if counter equals input integer
End loop

Reverse temp

Initialize `result` to calling `rotate_array` with `temp` passed in

Push `result` into `arr`

Convert back to an integer via joining and integer conversion
-----------------------
Code:
=end

def rotate_rightmost_digits(integer, rotator)
  arr = integer.digits.reverse
  rotating_arr = []
  counter = 0

  loop do
    rotating_arr << arr.pop
    counter += 1
    break if counter == rotator
  end

  rotating_arr.reverse!
  result = rotate_array(rotating_arr)
  arr << result
  arr.join.to_i
end

def rotate_array(arr)
  result = []

  arr.each do |num|
    result << num.dup
  end

  result << result.shift
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


#--------------------------------------------------------
# Nice alternate solutions without helper methods

def rotate_rightmost_digits(num, int)
  first = num.to_s.split('')
  last = first.delete_at(-int)
  (first << last).join.to_i
end

#or similarly

def rotate_rightmost_digits(num, digits)
  digit_list = num.to_s.chars
  digit_list.push(digit_list.delete_at(-digits))
  digit_list.join.to_i
end
