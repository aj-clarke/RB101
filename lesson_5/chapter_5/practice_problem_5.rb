=begin
Consider the below nested hash, then determine the total age of just the male
members of the family.
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each do |_, stats|
  total_age += stats["age"] if stats["gender"].eql?("male")
end

p total_age
