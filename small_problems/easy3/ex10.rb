def palindromic_number?(int)
  return true if int.to_s.reverse.to_i.eql?(int)
  false
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
