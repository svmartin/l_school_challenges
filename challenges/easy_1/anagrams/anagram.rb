class Anagram
  def initialize(test_word)
    @test_word = test_word
  end
  
  def match(words)
    result = []
    words.each do |word|
      result << word if word.downcase.chars.sort.join == @test_word.downcase.chars.sort.join &&
        word.downcase != @test_word.downcase
    end
    result.size == 1 ? result : result.sort.uniq
  end
end # class Anagram end

# tester = Anagram.new("diaper")
# p tester.match(%w(hello world Zombies pants))
# puts "====="
# tester1 = Anagram.new("ant")
# p tester1.match(%w(tan stand at))
# puts "====="
# tester2 = Anagram.new("allergy")
# p tester2.match(%w(gallery))
