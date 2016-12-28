class SumOfMultiples
  def self.to(limit, mults=[3, 5])
    result = (0...limit).select { |num| mults.any? { |mult| num % mult == 0 } }
    result.inject(:+)
  end
  
  def initialize(*mults)
    @mults = mults.empty? ? [3, 5] : mults
  end
  
  def to(limit)
    self.class.to(limit, @mults)
  end
end # class SumOfMultiples end

p SumOfMultiples.to(10) # multiples of 3 or 5 up until 10 but not includinf # sum them up
tester = SumOfMultiples.new
p tester.to(10)
