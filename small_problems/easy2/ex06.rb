100.times { |i| puts i if i.odd? }

# 1.upto(99) { |i| puts i if i.odd? }

# for i in (1..99)    # => rubocop prefers `each` over `for` (next solution)
#   puts i if i.odd?
# end

# (1..99).each { |int| puts int if int.odd? }
