# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

=begin

The output of the code will be 34. Integers cannot be mutated, and the 'answer'
variable that is initialized to the integer object 42 is never re-assigned to
a different value. On the last line, it simply displayes the result of the
expression answer (42) - 8, which is 34.

=end