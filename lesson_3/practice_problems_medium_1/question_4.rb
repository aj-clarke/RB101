=begin
Alyssa was asked to write an implementation of a rolling buffer. Elements are
added to the rolling buffer and if the buffer becomes full, then new elements
that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for
modifying the buffer?". Is there a difference between the two, other than what
operator she chose to use to add an element to the buffer?
=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

=begin

My Answer:
With rolling_buffer1, you are working with the original array being passed in
as `buffer` and modifying it directly, AKA mutating the caller.

With rolling_buffer2, you are assigning the results of input_array +
[new_element] to a new variable `buffer`, and returning that result. You are
not mutating the caller/modifying the original array.

Provided answer:
Yes, there is a difference. While both methods have the same return value, in
the first implementation, the input argument called buffer will be modified and
will end up being changed after rolling_buffer1 returns. That is, the caller
will have the input array that they pass in be different once the call returns.
In the other implementation, rolling_buffer2 will not alter the caller's input
argument.

=end
