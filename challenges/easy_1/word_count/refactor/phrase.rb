class Phrase
  def initialize(words)
    @words = words
  end
  
  def word_count
    count = Hash.new(0)
    
    @words.scan(/\b[\w']+\b/).each do |word|
      count[word.downcase] += 1
    end
    
    count
  end
end
