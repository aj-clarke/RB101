# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr = arr.sort do |a, b|
  b.to_i <=> a.to_i
end
p arr
