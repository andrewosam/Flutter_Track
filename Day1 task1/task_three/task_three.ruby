def custom_every(arr, condition)
  arr.all? { |elem| condition.call(elem) }
end


input_array = [1, 2, 3, 4]
condition = lambda { |elem| elem == 2 }
result = custom_every(input_array, condition)
puts result 
