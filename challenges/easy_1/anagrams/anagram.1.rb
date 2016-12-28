class Anagram
  def initialize(word)
    @original_word = word
    @letters = letters(@original_word)
  end

  def match(possibilities)
    possibilities.sort.select { |word| anagram?(word) }
  end

  private

  def anagram?(word)
    @letters == letters(word) && @original_word != word.downcase
  end

  def letters(word)
    word.downcase.chars.sort
  end
end