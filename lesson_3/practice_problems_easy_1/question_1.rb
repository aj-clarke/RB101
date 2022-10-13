numbers = [1, 2, 2, 4]
numbers.uniq

puts numbers

=begin

What will the above code output?

The code will output:
1
2
2
4

Although on line 2, the uniq method is invoked against the numbers array object.
This produces a NEW ARRAY of [1, 2, 3], but nothig is done with it. Further, it
does not mutate the original numbers array.
On line 4, the puts method, in addition to calling to_s on its argument
(numbers), writes each element on a new line if passed an array.

Additional note: If the last line had been `p numbers` instead, the output would
have been [1, 2, 2, 3] because the `p` method automatically calls `inspect` on
its argument. This gives a different formatting on the output. Further, you
could have also done `puts numbers.inspect` and the output would have been the
same as using the `p` method.

=end
