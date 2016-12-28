class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.empty? ? [3, 5] : multiples
  end
  
  def self.to(limit)
    limit
  end
  
  def to(limit)
    limit
  end
end # class SumOfMultiples end

SumOfMultiples.to(10)
tester = SumOfMultiples.new(7,11)
p tester
