# Write a method that returns a list of all substrings of a string. The returned 
# list should be ordered by where in the string the substring begins. This means 
# that all substrings that start at position 0 should come first, then all 
# substrings that start at position 1, and so on. Since multiple substrings will 
# occur at each position, the substrings at a given position should be returned 
# in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the 
# previous exercise:

def substrings_at_start(string)
  result = []
  counter = 1
  
  while counter < (string.length + 1)
    result << string.slice(0,counter)
    counter += 1
  end
  result
end

def all_substrings(string)
  result = []
  
  while string.length > 0
    result << substrings_at_start(string)
    string.slice!(0)
  end
  
  result.flatten
end

p all_substrings('abcde')
p all_substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]