class Anagram
  def initialize(test_word)
    @test_word = test_word.downcase
  end
  
  def match(words)
    words.select { |word| anagram?(word) }
  end

  def anagram?(word)
    word.downcase != @test_word &&
      word.downcase.chars.sort == @test_word.chars.sort
  end
end
