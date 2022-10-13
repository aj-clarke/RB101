=begin
In other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.

To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

What will be printed by each of these code groups?
=end

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
Result:
one is: one
two is: two
three is: three
None of the variables are mutated outside of the method because reassignment
occurred within the method; therefore, changes in the method were contained
within the methods local scope.
=end

# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Same answer as question A. None of the main scope variables are changed.

# C)

def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin

The output is:

one is: two
two is: three
three is: one

This is because the reference to the string object for each variable
(one, two , three) are passed into the mess_with_vars method and assigned to
the methods local variables (one, two, three). The string objects are then
modified in-place with the gsub! method, which mutates the caller(s). If gsub
(without the !) would have been used, then no changes would have occurred
because a new string would have been returned.

=end
