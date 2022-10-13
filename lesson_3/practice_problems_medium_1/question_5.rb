=begin

Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
A user passes in two numbers, and the calculator will keep computing the
sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he
got an error. Something about the limit variable. What's wrong with the code?

=end

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

=begin
How would you fix this so that it works?

My Answer:
Within the `fib` method, the `limit` variable is not defined or passed into the
method; therefor, when attempting to use a conditional against `limit`, the
result is the error `undefined local variable or method 'limit' for main`. The
method needs to have a third parameter, which would allow the `limit` variable
to be passed into the method for use within the methods scope (variable scope).


Provided Answer:

=end
