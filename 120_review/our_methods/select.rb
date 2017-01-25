def our_select(array)
  counter = 0
  result = []
  
  while counter < array.size
    result << array[counter] if yield(array[counter])
    counter += 1
  end
  
  result
end

p our_select([1, 2, 3, 4, 5]) { |ele| ele > 3 }
p our_select([1, 2, 3, 4, 5]) { |ele| ele.odd? }
