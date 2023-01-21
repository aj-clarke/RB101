def staggered_case(string)
  upcase = true
  new_str = string.chars.each do |char|
    next if (char =~ /[a-z]/i) != 0     # the `i` ignores case, no need for A-Z in brackets

    if upcase.eql?(true)
      char.upcase!
    else
      char.downcase!
    end
    upcase = !upcase
  end
  new_str.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
