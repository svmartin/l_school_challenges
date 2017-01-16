# Pig Latin
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the 
# end of the word.

# Rule 2: If a word begins with a consonant sound, move it to the end of 
# the word, and then add an "ay" sound to the end of the word.

class PigLatin
  def initialize(phrase)
    @words = phrase.split
  end
  
  def self.translate(word)
    PigLatin.new(word).translate
  end
  
  def translate
    @words.map do |word|
      word.start_with?('a', 'e', 'i', 'o', 'u') ? apply1(word) : apply2(word)
    end.join(' ')
  end
  
  def apply1(word)
    word + 'ay'
  end
  
  def apply2(word)
    word = word[1..-1] + word[0] + 'ay'
  end
end # class PigLatin end
p PigLatin.translate('quick fast run')
