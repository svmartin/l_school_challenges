def our_times(number)
  counter = 0

  while counter < number
    yield(counter)
    counter += 1
  end
  
  number
end

p our_times(5) { |num| puts "number: #{num}" }
