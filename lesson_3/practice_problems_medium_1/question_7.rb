=begin
One day Spot was playing with the Munster family's home computer and he wrote a
small program to mess with their demographic data:
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

=begin
After writing this method, he typed the following...and before Grandpa could
stop him, he hit the Enter key with his tail:
=end

mess_with_demographics(munsters)

=begin
Did the family's data get ransacked? Why or why not?

My Anwer:
Yes the data gets ransacked. When the method 'mess_with_demographics' is
invoked against the hash 'munsters', each family member has their associated
values reassigned. `age` has its value reassigned to + 42 of its current integer
value, and `gender` has its value changed to 'other'.

Provided Answer:


Spot will find himself in the "dog" house for this one. The family's data is all
in shambles now.

Why? Remember that in Ruby, what gets passed to a method isn't the value of the
object. Under the hood, Ruby passes the object_id of each argument to the
method. The method stores these object_id's internally in locally scoped
(private to the method) variables (named per the method definition's parameter
list).

So Spot's demo_hash is pointing to the munsters hash. In this case, the program
does not create a new hash for the result -- it just uses the existing hash
as-is. So the actual hash object that is being messed with inside of the method
IS the munsters hash.

=end