def lights(int)
  arr = (0...int).to_a.map! { |_| '0' }
  skip = 1
  result = []
  new_arr = []

  (0...arr.size).each do |outer|
    (outer...arr.size).step(skip) do |inner|
      arr[inner].eql?('0') ? arr[inner] = '1' : arr[inner] = '0'
    end
    new_arr = arr.dup
    skip += 1
  end

  new_arr.each_with_index do |ele, idx|
    result << (idx + 1) if ele.eql?('1')
  end
  result
end

p lights(1000)

p lights(85000)
