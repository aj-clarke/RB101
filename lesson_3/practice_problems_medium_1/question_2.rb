=begin
The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

Error:
no implicit conversion of Integer into String (TypeError)

Why is this and what are two possible ways to fix this?
=end

# You can perform string interpolation to have the expression converted to
# a string in line with the string literal
puts "the value of 40 + 2 is #{40 + 2}"

# You can convert the result of the expression (40 + 2) to a string via the
# Integer to_string method 
puts "the value of 40 + 2 is " + (40 + 2).to_s
