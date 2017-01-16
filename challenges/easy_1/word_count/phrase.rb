class Phrase
  def initialize(phrase)
    @words = phrase
  end
  
  def remove_punc(words)
    with_contractions = words.gsub(/\s*'\B|\B'\s*/, '')
    with_contractions.gsub(/[^a-zA-Z0-9|\'\s]/, '').squeeze(" ")
  end
  
  def separate_words(clean_words)
    clean_words.split(/[\n ,]/)
  end

  def word_count
    separate = separate_words(@words)
    clean_words = remove_punc(separate.join(' '))
    clean_and_separate = clean_words.split
    ready = clean_and_separate.map(&:downcase)
    ready.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end

