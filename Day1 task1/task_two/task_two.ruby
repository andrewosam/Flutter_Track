def custom_any(arr, condition)
  arr.each do |elem|
    return true if condition.call(elem)
  end
  false
end


input_array = [1, 2, 3, 4]
condition = lambda { |elem| elem == 2 }
result = custom_any(input_array, condition)
puts result 