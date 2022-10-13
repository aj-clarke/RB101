# Depending on a method to modify its arguments can be tricky:

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
Whether the above "coincidentally" does what we think we wanted depends upon
what is going on inside the method.

How can we change this code to make the result easier to predict and easier for
the next programmer to maintain? That is, the resulting method should not mutate
either argument, but my_string should be set to 'pumpkinsrutabaga' and my_array
should be set to ['pumpkins', 'rutabaga']

=end

# My Solution: Breaks it into two separate methods

def str_method(a_string_param)
  a_string_param += "rutabaga"
end

def arr_method(an_array_param)
  an_array_param += ["rutabaga"]
end

my_string2 = 'pumpkins'
my_array2 = ['pumpkins']

my_string2 = str_method(my_string2)
my_array2 = arr_method(my_array2)

puts "My string looks like this now: #{my_string2}"
puts "My array looks like this now: #{my_array2}"

# Provided solution ------------------------------------------------------------

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"