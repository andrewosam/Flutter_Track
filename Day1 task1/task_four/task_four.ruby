def custom_some(arr, condition)
  arr.any? { |elem| condition.call(elem) }
end


input_array = [1, 2, 3, 4]
condition = lambda { |elem| elem == 2 }
result = custom_some(input_array, condition)
puts result 