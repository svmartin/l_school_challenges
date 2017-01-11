# within 45 minutes
# read description 3 times
# communicate and clarify
# have a plan (algorithm)
# verify with test cases
# manage your energy
# abstraction

# character set consiting of letters, a space, and a point.
# words consist of one or more, but at most 20 letters.
# 

test_string = "whats the matter with kansas."
test_result = "whats eht matter htiw kansas."

def odd_words(string)
  words = string.delete('.').split
  
  words.map.with_index do |word, index|
    index.even? ? word : word.reverse
  end.join(' ') + "."
end

def print_one(string)
  string.split.each do |ele|
    ele.chars.each do |char|
      puts char
      sleep(0.5)
    end
  end
end

p odd_words(test_string)
p odd_words(test_string) == test_result
p odd_words("hi")
p odd_words("hi jim.")
p odd_words("hi jim bye.")
p odd_words("hi jim bye bill")
p odd_words("hi         jim bye bill     .")

print_one(odd_words(odd_words("hi jim bye bill")))
