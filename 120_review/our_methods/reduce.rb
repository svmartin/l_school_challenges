def our_reduce(array, default=0)
  total = default
  counter = 0
  
  while counter < array.size
    total = yield(total, array[counter])
    counter += 1
  end
  
  total
end

p our_reduce([1, 2, 3, 4, 5]) { |acc, num| acc + num }
p our_reduce([1, 2, 3, 4, 5], 1) { |acc, num| acc * num }
