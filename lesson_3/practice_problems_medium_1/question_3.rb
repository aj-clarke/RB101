=begin

Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number, and
asked Alan to change the loop. How can you make this work without using
begin/end/until? Note that we're not looking to find the factors for 0 or
negative numbers, but we just want to handle it gracefully instead of raising an
exception or going into an infinite loop.

=end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0   # Modified line
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end                 # Modified line
  factors
end

p factors(-10)

=begin

Bonus 1
What is the purpose of the number % divisor == 0 ?

My answer:
To show that one number divides evenly with another with no remainder
Provided answer:
Allows you to determine if the result of the division is an integer number (no
remainder)

Bonus 2
What is the purpose of the second-to-last line (lines 12 and 30) in the method
(the factors before the method's end)?

My answer:
This allows you to return the expression desired. Since methods return the last
evaluated expression, without it, the method would return `nil`. Adding in the
`factors` variable returns the factors array that was produced by the method.
Provided answer:
This is what is the actual return value from the method. Recall that without an
explicit return statement in the code, the return value of the method is the
last statement executed. If we omitted this line, the code would execute, but
the return value of the method would be nil.
=end