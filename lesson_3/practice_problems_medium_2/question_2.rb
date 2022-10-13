# Let's take a look at another example with a small difference in the code:

# Take a look at the following code and predict the output:
a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin

My Answer:
Unlike strings, integers are immutable (they cannot be mutated), therefore once
an integer is given an object_id, all variables point to that single integers
object id if it is assigned to that integer.
`a` is initialized to the integer object 42.
`b` is initialized and references the same integer object 42 as `a`
`c` is initalized to the same integer object referenced by `a`
Result:
Each variable references the same object id

Provided Answer:
That's weird... b wasn't explicitly initialized to the object referenced by a,
but they have the same object id. What's going on?

It turns out that this has to do with how integers are immutable; that is, the
  value of an integer object cannot be mutated. In Ruby, each integer is a
  single immutable object (eg, there can only ever be one integer 1 object, one
    integer 2 object, and so on). As a result, a, b, and c all reference the
    same immutable integer 42 object. Any operation on an integer simply returns
    a new integer object.

Note that for performance reasons, true, false and nil are also handled
specially (eg, every instance of true will all have the same object id). This
also has to do with the immutability of true, false and nil.

=end
