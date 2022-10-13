# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=begin
My Answer:
The result will be...
{:a=>'hi there'}
The hash `greetings` has one key/value pair. When `informal_greeting` is
initialized to the value of the key (symbol) a:, it is assigned the string
object 'hi'. The shovel or String#<< method is invoked with the argument of
' there' which appends the ' there' string which creates 'hi there'. The result
is the value that the symbol a: references being updated. When `greetings` is
passed into the puts method, it prints out the updated/mutated hash.

Provided Answer:

The output is {:a=>"hi there"}. The reason is because informal_greeting is a
reference to the original object. The line informal_greeting << ' there' was
using the String#<< method, which modifies the object that called it. This means
that the original object was changed, thereby impacting the value in greetings.
If instead of modifying the original object, we wanted to only modify
informal_greeting but not greetings, there are a couple of options:

- we could initialize informal_greeting with a reference to a new object
  containing the same value by informal_greeting = greetings[:a].clone.
- we can use string concatenation
    informal_greeting = informal_greeting + ' there'
  which returns a new String object instead of modifying the original object.

=end
