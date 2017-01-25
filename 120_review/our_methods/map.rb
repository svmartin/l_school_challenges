def our_map(array)
  counter = 0
  result = []
  
  while counter < array.size
    result << yield(array[counter])
    counter += 1
  end
  
  result
end

p our_map([1, 2, 3, 4, 5]) { |ele| ele * 2 }
