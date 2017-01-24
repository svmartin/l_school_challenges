class Transform
  
  def initialize(phrase)
    @phrase = phrase
  end
  
  def self.lowercase(phrase) # class methods do not have access to instance variables
    phrase.downcase
  end
  
  def uppercase
    @phrase.upcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')