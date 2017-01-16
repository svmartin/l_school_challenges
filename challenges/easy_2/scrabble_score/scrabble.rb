class Scrabble
  def initialize(word)
    @word = word_prep(word)
  end
  
  def self.score(word)
    Scrabble.new(word).score
  end
  
  def score
    score = 0
    @word.chars.each do |char|
      case char
      when /[aeioulnrst]/ then score += 1
      when /[dg]/ then score +=  2
      when /[bcmp]/ then score +=  3
      when /[fhvwy]/ then score +=  4
      when /[k]/ then score +=  5
      when /[jx]/ then score +=  8
      when /[qz]/ then score +=  10
      end
    end
    score
  end
  
  def word_prep(word)
    word = '' if word.nil?
    word.downcase
  end
end 
