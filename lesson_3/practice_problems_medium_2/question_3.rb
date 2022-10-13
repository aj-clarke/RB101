=begin
Let's call a method, and pass both a string and an array as arguments and see
how even though they are treated in the same way by Ruby, the results can be
different.

Study the following code and state what will be displayed...and why:
=end
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

My Answer:
Line 17 (line 10 in the lesson) will return "pumpkins"
Line 18 (line 11 in the lesson) will return ['pumpkins', 'rutabaga']
Reason:
The first line of the `tricky_method` reassignes a_string_param to a new value.
Strings, Arrays, Hashes, etc, can be passed into a method for mutation, but once
a reassignment occurs, you are working with a new object, not mutating the
original. `my_string` is not modified, and so it evaluates to 'pumkins' in the
second to last line within the string interpolation.
The second line of the method pushes/shovels in a new object into the existing
array (mutates the caller); therefore it is reflected in the last line of the
code when it is displayed. The updated array is shown within the last lines
string interpolation.
-------------------------
Provided Answer:
Why? It seems clear from the above that Ruby treats string and array arguments
differently...but not so fast. Actually the arguments are treated in exactly the
same way...but the results are different.

In both cases, Ruby passes the arguments "by value", but unlike some other
languages, the value that gets passed is a reference to some object. The string
argument is passed to the method as a reference to an object of type String.
Similarly, the array is passed to the method as a reference to an object of type
Array.

The important distinction is that while a reference is passed, the method
initializes a new local variable for both the string and the array and assigns
each reference to the new local variables. These are variables that only live
within the scope of the method definition.

So, if both arguments live inside the method as a new variable that stores a
reference to the passed object...why don't the string and the array behave
the same way in our output?

The difference lies in what Ruby does when the program executes either a
String#+= operation or an Array#<< operation.

The String#+= operation is re-assignment and creates a new String object. The
reference to this new object is assigned to a_string_param. The local variable
a_string_param now points to "pumpkinsrutabaga", not "pumpkins". It has been
re-assigned by the String#+= operation. This means that a_string_param and
my_string no longer point to the same object.

With the array, one array object can have any number of elements. When we attach
an additional element to an array using the << operator, Ruby simply keeps
using the same object that was passed in, and appends the new element to it.

So, because the local variable an_array_param still points to the original
object, the local variables my_array and an_array_param are still pointing
at the same object, and we see the results of what happened to the array
"outside" of the method.
=end
