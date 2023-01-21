=begin
One of the most frequently used real-world string properties is that of "string
substitution", where we take a hard-coded string and modify it with various
parameters from our program.

Given this previously seen family hash, print out the name, age and gender of
each family member:
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, stats|
  puts "#{name} is a #{stats['age']}-year-old #{stats['gender']}"
end
