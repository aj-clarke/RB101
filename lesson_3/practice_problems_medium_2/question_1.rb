=begin
Every object in Ruby has access to a method called object_id, which returns a
numerical value that uniquely identifies the object. This method can be used to
determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:
=end

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin

My Answer:
`a` is initialized to the string object 'fourty two', which will be assigned a
unique object_id.
`b` is initialized to a different string object 'fourty two'. Even though they
have the same value of 'fourty two', they point to two different objects.
`c` is initialized to the string object that is referenced by the variable `a`
Result:
`a` and `c` point to the same object id, while `b` points to a separate
object id

Provided Anwer:
When you run the code, the exact object ids may differ; however, the output
should make it clear that a and b reference different objects. Don't be deceived
by appearances — the two objects look the same (ie, they both have the value
  "forty two") but they are still different objects.

Meanwhile, the object ids show that a and c reference the same object. This is
because c was initialized to the object referenced by a. No surprises here.

(Object ids are a private implementation detail of how Ruby executes the code
  "under the hood", and may differ depending on your specific environment, Ruby
  version, etc. There's no guarantee that an object will have the same object id
  in two different runs of the program, so never rely on the specific value of
  the id).
=end