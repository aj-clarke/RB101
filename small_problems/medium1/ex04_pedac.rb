=begin
Question:
1000 Lights
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.



-----------------------
Problem (Rewrite if needed else skip):
An array of 'n' lights are all initially off. Starting from index position 0, you turn each light on (in index order). The second pass you go back to the beginning and toggle the indexes at (current index + 1); store this value to continue stepping higher. On the third pass, you toggle indexes at (current index + 1).
Continue this process until you have gone as many iterations as the size of the Array

Method takes one argument, total number of switches, and returnds an array identifying which lights are on after all iterations are complete.

Rules:
  Explicit Requirements


  Implicit Requirements

I: Integer
O: Array


-----------------------
Examples:
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

-----------------------
Modeling:
5 lights (5 is input integer)
Create an array `arr` of characters of '0' the length of the input Integer

set arr = ('0'...'5').to_a.map! { |_| '0'} => ['0','0','0','0','0']

set arr = Iterate the collection |outer|
            Iterate the collection |inner|
              If inner = '0'
                arr[inner] = '1'
              else
                arr[inner] = '0'
              end
            end
          end

Check arr, i should have multiple 1 values => ['0','1','0','0','1']

set arr = Iterate `arr` with index to select only values with a '1' |ele, idx|

return arr
  

-----------------------
Data Structure:
I: Integer representing the size of the array
W: Array of `0`s and `1`s to represent on/off; then selecting indexes with `1` 
O: Array of index positions that are still `on`

Algorithm:
< given an integer `int` >
Initialize an array `arr` of characters ('0') via a range from 0 to the length of the input Integer (non inclusive)

Initialize `skip` (counter) to integer 1
Initialize `result` to an empty Array
Initialize `new_arr` to an empty Array

Nested iteration
Use a range to iterate through `arr` elements |outer| (defines full range to iterate through)
  Use a range to iterate through `arr` elements |inner| (defines each subset of ranges)
  Use `skip` (step method) to determine how many elements should be skipped over for each subsequent iteration before any code is executed in the block
    Set the value of the current element in `arr` to `'1'` if it is equal to `'0'`
    Set the value of the current element in `arr` to `'0'` if it is equal to `'1'`
  Set new_arr equal to a duplicate of the current `arr` object to capture changes
  Iterate `skip` by 1 for the next iteration

Iterate through `new_arr` with indexes
  If the current element is equal to '1' push that elements (index + 1) into `result`
    - Adding 1 to the index due to indexes starting at 0

return result

-----------------------
Code:
=end

def lights(int)
  arr = (0...int).to_a.map! { |_| '0' }
  skip = 1
  result = []
  new_arr = []

  (0...arr.size).each do |outer|
    (outer...arr.size).step(skip) do |inner|
      arr[inner].eql?('0') ? arr[inner] = '1' : arr[inner] = '0'
    end
    new_arr = arr.dup
    skip += 1
  end

  new_arr.each_with_index do |ele, idx|
    result << (idx + 1) if ele.eql?('1')
  end
  result
end

p lights(1000)

p lights(85000)
