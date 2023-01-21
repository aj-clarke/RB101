def twice(int)
  str = int.to_s
  split_length = str.size / 2 #1
  str1 = str[0, split_length] # 3
  str2 = str[split_length, split_length] # 7 [..]

  return int * 2 if str.size.odd?

  str1.eql?(str2) ? int : int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
