=begin

Describe the difference between ! and ? in ruby. And explain what would happen
in the following scenarios:

The difference between the two are that the ! is used to represent negating a
boolean, or sometimes used to represent when a method is destructive. The ? is
typically used to validate whether something is true or false.

Questions:


1. what is != and where should you use it?
   My answer:
   It is used to signify one object/expression is not equal to another. It is
   used for flow control.

   Provided answer: means 'not equals'

2. put ! before something, like !user_name
   My answer:
   ! used before something is used to reverse/negate a boolean result. It can be
   used to say if name is not user_name (!user_name), then do x.

   Provided answer: !<some_object> is used to turn any object into the opsosite
   of their boolean equivalent.

3. put ! after something, like words.uniq!
   My answer:
   ! used after something "typically" (but not always) signifies that it is a
   mutating method. This means it will change the object it is being called on.

   Provided answer:

4. put ? before something
   My answer:
   Not sure

   Provided answer: ? : is the ternary operator for if...else


5. put ? after something
   My answer:
   ? after something is "typically" (but not always) an indicator of a method
   that returns a boolean true or false value.

   Provided answer:

6. put !! before something, like !!user_name
   My answer:
   !! before something is a double negate, which will keep an evaluated result
   true or false if that was its original result

   Provided answer: !!<some_object> is used to turn any object into their
   boolean equivalent.
=end