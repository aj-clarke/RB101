def sequence(int)
  # result = []
  1.upto(int).to_a
  # result
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# def sequence(int)
#   (1..int).to_a
# end
