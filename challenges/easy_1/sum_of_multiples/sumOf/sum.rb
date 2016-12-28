class SumOfMultiples
  def initialize(*mults)
    @mults = mults.empty? ? [3, 5] : mults
  end
  
  def self.to(limit, mults=[3, 5])
    result = (0...limit).select { |num| mults.any? { |mult| num % mult == 0 } }
    result.inject(&:+)
  end
  
  def to(limit)
    self.class.to(limit, @mults)
  end
end # end of Sum class

p SumOfMultiples.to(10) == 23
p SumOfMultiples.new(7, 13, 17).to(20)
