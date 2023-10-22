def custom_mapping(arr, transformation, should_transform)
  if should_transform
    arr.map { |elem| transformation.call(elem) }
  else
    arr
  end
end



input_array = [1, 2, 3, 4]
transformed_array = custom_mapping(input_array, lambda { |elem| elem * 2 }, false)
puts transformed_array
