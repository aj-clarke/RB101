=begin
What do you expect to happen when the greeting variable is referenced in the
last line of the code below?
=end

if false
  greeting = "hello world"
end

greeting

=begin

# Stumped me this go round

=begin
Provided answer:
greeting is nil here, and no "undefined method or local variable" exception is
thrown. Typically, when you reference an uninitialized variable, Ruby will raise
an exception, stating that it is undefined. However, when you initialize a local
variable within an if block, even if that if block does not get executed, the
local variable is initialized to nil.

=end
