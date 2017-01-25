def our_each(array)
  counter = 0
  
  while counter < array.size
    yield(array[counter])
    counter += 1
  end
  
  array
end

p our_each([1, 2, 3, 4, 5]) { |ele| puts ele * 2 }
