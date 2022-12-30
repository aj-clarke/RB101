def reverse_it!(arr)
  return arr if arr.size.eql?(0)
  initial_elements_counter = arr.size - 1
  elements_to_delete = arr.size - 1

  until initial_elements_counter.eql?(0)
    initial_elements_counter -= 1
    arr << arr[initial_elements_counter]
  end

  until elements_to_delete.eql?(0)
    elements_to_delete -= 1
    arr.delete_at(elements_to_delete)
  end
  arr
end

list = [1,2,3,4]
result = reverse_it!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse_it!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse_it!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse_it!(list) == [] # true
p list == [] # true
