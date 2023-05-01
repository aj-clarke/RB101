def get_grade(int1, int2, int3)
  scores = int1, int2, int3
  average = scores.inject(:+) / 3

  result = case average
           when 0..60
             'F'
           when 61..70
             'D'
           when 71..80
             'C'
           when 81..90
             'B'
           else
             'A'
           end
  result
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"