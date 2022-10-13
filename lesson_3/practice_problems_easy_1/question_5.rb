# Programmatically determine if 42 lies between 10 and 100.

# p (10..100).include?(42)

# Alternate solutions

# answer = false
# (10..100).each do |int|
#   # p int
#   if int.to_s == '42'
#     answer = true
#   else
#     next
#   end
# end

# p answer

# Solution provided, uses the cover method from the Range class
p (10..100).cover?(42)
