=begin
Given this data structure write some code to return an array containing the
colors of the fruits, and the sizes of the vegetables. The sizes should be
uppercase and the colors should be capitalized.
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.each_with_object([]) do |(k, v), arr|
  if v[:type].eql?('fruit')
    tmp_arr = []
    v[:colors].map do |color|
      tmp_arr << color.capitalize
    end
    arr << tmp_arr
  else
    arr << v[:size].upcase
  end
  p arr
end