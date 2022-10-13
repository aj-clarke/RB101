=begin
The Ruby Array class has several methods for removing items from the array.
Two of them have very similar names. Let's see how they differ:

What do the following method calls do (assume we reset 'numbers' to the original
array between method calls)?
=end

numbers = [1, 2, 3, 4, 5]

=begin
The delete_at method will delete the element at the 'n' index position and
returns the deleted element. If the 'n' index position is out of range, an
'index is out of range' error will be thrown.
=end

p numbers.delete_at(1)

=begin
The delete method will delete all elements that match the provided object and
returns the deleted element. If there are no matches, nil is returned.
=end

numbers = [1, 2, 3, 4, 5, 1]

p numbers.delete(1)