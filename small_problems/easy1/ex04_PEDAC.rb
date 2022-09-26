=begin
Question:

Write a method that counts the number of occurrences of each element in a given
array.

----------------------
Problem:
Create a method that can count how many times an element shows up in an array.

Explicit Requirements:
- Count the number of times element appears in array
- Method needs one parameter for the array argument
- Words are case sensitive: 'suv' != 'SUV'


Implicit Requirements:
- Print out the results

Inputs:
- Array of elements

Outputs:
- Hash of key/values that represent the array element and the number of times
  it occurred in the array

----------------------

Examples:
colors = [red, blue, white, red, green]
red => 2
blue => 1
white => 1
green => 1

----------------------

Data Structure:
Input: Array of elements
Output: Hash of results

----------------------

Algorithm:

**PSEUDO - Informal**
- Create method that has one parameter for an array
- Create empty hash placeholder
- Iterate through vehicles
  - Each element
    - If element key exists in hash, add one to the value in the hash
    - Else create the key with value of 1
- Return hash



**PSEUDO - Formal**
START
DEF METHOD count_occurrences(array)
  SET hash = {}
  FOR EACH element in array
    IF hash.has_key?(:element)
      hash(:element) += 1
    ELSE
      hash(:element) = 1
    END IF
  END EACH
  hash
END METHOD
END

----------------------

Code

=end
