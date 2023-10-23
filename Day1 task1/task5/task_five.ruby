def custom_reducer(arr, &reducer, initial_value)
  accumulator = initial_value
  arr.each do |element|
    accumulator = reducer.call(accumulator, element)
  end
  accumulator
end

my_array = [1, 2, 3, 4]
result = custom_reducer(my_array) { |acc, el| el + acc } 15
puts result 