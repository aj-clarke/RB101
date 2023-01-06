=begin
Question:
Mutation
What will the following code print, and why? Don't run the code until you have
tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
-----------------------
Answer:

The output will be:
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

The reason is due to how the #<< method is pushing references to the same string
objects in `array1` directly into `array2`. Since both arrays contain the same
string objects, when they are permanently mutated on line 4 via the #upcase!
method, the mutation is reflected within both arrays.
=end