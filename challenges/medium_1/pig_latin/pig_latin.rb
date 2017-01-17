class PigLatin
  def initialize(phrase)
    @words = phrase.split
  end

  def self.translate(word)
    PigLatin.new(word).translate
  end

  def translate
    @words.map do |word|
      case
      when word.start_with?('sch', 'thr')                       then apply_sch_thr(word)
      when word.start_with?('squ')                              then apply_squ(word)
      when word.start_with?('ye')                               then apply_consonants(word)
      when word.start_with?('qu', 'th', 'ch')                   then apply_qu(word)
      when word.start_with?('a', 'e', 'i', 'o', 'u', 'y', 'xr') then apply_vowels(word)
      else apply_consonants(word)
      end
    end.join(' ')
  end

  def apply_vowels(word)
    word + 'ay'
  end

  def apply_consonants(word)
    word = word[1..-1] + word[0] + 'ay'
  end

  def apply_qu(word)
    word = word[2..-1] + word[0..1] + 'ay'
  end

  def apply_squ(word)
    word = word[3..-1] + word[0..2] + 'ay'
  end
  
  def apply_sch_thr(word)
    word[3..-1] + word[0..2] + 'ay'
  end  
end
