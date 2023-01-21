def staggered_case(string)
  new_str = string.chars.each_with_index do |char, idx|
    if idx.even? && char =~ /[a-zA-Z]/
      char.upcase!
    elsif idx.odd? && char =~ /[a-zA-Z]/
      char.downcase!
    else
      char
    end
  end
  new_str.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
