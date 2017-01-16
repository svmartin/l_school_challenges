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
