# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

=begin
My Answer:
First, although `foo` has a a default parameter assigned for its method
parameter, it is not used within the methods body; therefore, the return value
is always 'yes'.

When bar is called on the method foo, the return value of foo (yes) is passed to
the bar parameter `param`. On line 8 (line 6 in the book), the ternary operator
evaluates to false, which results in the code directly to the right of the :
being the result of the ternary expression. The return value is "no".

Provided Answer:
This is because the value returned from the foo method will always be "yes",
and "yes" == "no" will be false.

=end
