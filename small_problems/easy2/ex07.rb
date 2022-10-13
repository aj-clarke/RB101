99.times { |i| puts i if i.even? && i != 0 }

# 1.upto(99) { |i| puts i if i.even? }

# for i in (1..99)    # => rubocop prefers `each` over `for` (next solution)
#   puts i if i.even?
# end

# (1..99).each { |int| puts int if int.even? }
